# Post-quantum-key-exchange-mechanisms-for-IOT-devices 🔐📡

A lightweight, end-to-end secure messaging demo built on the **PineCone (Bouffalo Lab BL602)** platform.  
This project shows how two IoT nodes can exchange a message securely using:

- **ML-KEM (Post-Quantum Key Encapsulation)** for key exchange (PQ-safe)
- **HKDF-SHA256** for key derivation
- **AES-128-CCM** for authenticated encryption (confidentiality + integrity)
- **CoAP over UDP** for transport (simple + IoT-friendly)
- **Replay detection (nonce cache)** and **tamper detection (auth fail monitoring)**
- **OLED (SSD1306)** + **LED** status indicators on the gateway

---

## Table of Contents
- [What this project does](#what-this-project-does)
- [System roles](#system-roles)
- [How the protocol works](#how-the-protocol-works)
- [Security features](#security-features)
- [Hardware requirements](#hardware-requirements)
- [Wiring](#wiring)
- [Project structure](#project-structure)
- [Build & flash](#build--flash)
- [Run & test](#run--test)
- [Understanding the logs](#understanding-the-logs)
- [Configuration notes](#configuration-notes)
- [Troubleshooting](#troubleshooting)
- [Limitations](#limitations)
- [References](#references)

---

## What this project does

This project demonstrates a **secure message transfer** from a **Sender PineCone** to a **Gateway PineCone**.

The sender:
1. Discovers the gateway on the LAN
2. Requests the gateway’s ML-KEM public key via CoAP
3. Performs ML-KEM encapsulation to create a shared secret and ciphertext
4. Derives an AES key via HKDF
5. Encrypts a plaintext string using AES-CCM
6. Sends the encrypted payload to the gateway via CoAP/UDP

The gateway:
1. Receives the sender request and returns its ML-KEM public key
2. Receives the encrypted payload packet
3. Decapsulates the KEM ciphertext to recover the shared secret
4. Re-derives AES key via HKDF
5. Authenticates and decrypts via AES-CCM
6. Displays plaintext on **SSD1306 OLED** and blinks LED on success  
7. Detects replay/tamper events and signals via OLED + LED + logs

---

## System roles

### ✅ Sender Node (PineCone)
- Connects to Wi-Fi (STA mode)
- Discovers gateway automatically using broadcast (CoAP POST `/pqkem-pk`)
- Encapsulates using ML-KEM
- Encrypts message using AES-CCM
- Sends protected data (CoAP POST `/pqkem-data`)

### ✅ Gateway Node (PineCone)
- Connects to Wi-Fi (STA mode)
- Hosts a CoAP listener on UDP port **5683**
- Stores long-term ML-KEM keypair in internal flash
- Responds to `/pqkem-pk` requests
- Processes `/pqkem-data` messages:
  - KEM decapsulation
  - HKDF derive
  - AES-CCM auth+decrypt
  - OLED display + LED signal
  - replay/tamper detection logic

---

## How the protocol works

This project uses **two CoAP endpoints** on the gateway.

### 1) Public key request  
**Sender → Gateway:** `POST /pqkem-pk` (empty payload)  
**Gateway → Sender:** returns `PK` (ML-KEM public key)

The sender uses broadcast for discovery:
- Destination IP: `255.255.255.255`
- Port: `5683`
- The gateway replies from its real IP address
- The sender then updates the gateway IP and uses it for the data message

### 2) Protected data message  
**Sender → Gateway:** `POST /pqkem-data`  
Payload contains a compact binary frame:



- `type` = 3 (MSG_DATA)
- `nonce` = 12 bytes
- `kem_ct` = ML-KEM ciphertext bytes
- `ciphertext` = AES-CCM ciphertext of plaintext
- `tag` = AES-CCM authentication tag (16 bytes)

---

## Security features

### ✅ Post-Quantum key exchange (ML-KEM)
- Sender uses gateway public key to encapsulate → gets `(ct, shared_secret)`
- Gateway decapsulates `(ct, secret_key)` → recovers `shared_secret`

### ✅ Key derivation (HKDF-SHA256)
Both sides run:
- `HKDF(shared_secret, info="ML-KEM-AEAD") → AES-128 key`

This prevents using raw shared secret directly and cleanly scopes derived keys.

### ✅ Authenticated encryption (AES-128-CCM)
AES-CCM provides:
- Confidentiality (encryption)
- Integrity (authentication tag)

If ciphertext/tag/nonce is modified → gateway detects it as **AUTH FAIL**.

### ✅ Replay detection (Gateway nonce cache)
Gateway stores recently seen nonces in a fixed-size cache.
- If a nonce appears again → **REPLAY DROP**
- OLED shows replay status and LED blinks

### ✅ Tamper detection (Sender rate check) + Gateway auth monitoring
- Sender has a simple timing-based “tamper” heuristic (too-fast send triggers flag)
- Gateway detects tampering reliably by AES-CCM auth failure (tag mismatch)

> Note: AES-CCM authentication failure is the real cryptographic tamper detection mechanism.

---

## Hardware requirements

### Mandatory
- 2 × PineCone BL602 boards
  - One as **Sender**
  - One as **Gateway**
- 1 × Wi-Fi access point/router (same LAN)

### Gateway extras (recommended)
- SSD1306 OLED display (I2C)
- External LED + resistor (for GPIO indication)

---

## Wiring

### SSD1306 OLED → PineCone (Gateway)
Typical I2C wiring used in your codebase:

| OLED Pin | PineCone Pin |
|---------:|--------------|
| GND      | GND          |
| VCC      | 3V3          |
| SCL      | IO4          |
| SDA      | IO3          |

### LED (Sender or Gateway)
| LED | PineCone |
|-----|----------|
| Anode (+) through resistor | GPIO5 |
| Cathode (–) | GND |

---

## Project structure

A typical layout (your repo may differ slightly):


Sender project folder similarly contains:
- `main.cpp` (sender)
- `wifi.cpp`
- shared crypto + coap helpers

---
## Run & Test ✅

### 1) Flash both boards
- Flash **Gateway firmware** to the Gateway PineCone
- Flash **Sender firmware** to the Sender PineCone

### 2) Power-on order (important)
1. Power ON **Gateway** first  
   - Wait until it connects to Wi-Fi and prints:
     - `Listening on UDP port 5683`
   - OLED should show something like:
     - `Waiting...`
2. Power ON **Sender**
   - Sender will connect to Wi-Fi, discover the gateway via broadcast, fetch PK, then send the protected payload.

### 3) Expected runtime behavior
**Gateway**
- Replies to PK request (`/pqkem-pk`)
- Receives encrypted packet (`/pqkem-data`)
- Decrypts it and shows plaintext on OLED
- Blinks LED on success

**Sender**
- Broadcast discovery → receives gateway IP
- Encapsulates KEM
- Derives AES key via HKDF
- Encrypts plaintext via AES-CCM
- Sends packet to the gateway

### 4) Add demo video (for GitHub)
Create a folder:

## Build & flash


