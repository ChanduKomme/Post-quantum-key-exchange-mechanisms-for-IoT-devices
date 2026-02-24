# Post-Quantum Key Exchange for IoT Devices 🔐

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Bouffalo_Lab_BL602-blue)](https://www.bouffalolab.com/)
[![Crypto](https://img.shields.io/badge/Crypto-ML--KEM--512_%2B_AES--CCM-green)](https://csrc.nist.gov/projects/post-quantum-cryptography)
[![PineCone](https://img.shields.io/badge/PineCone-Wiki-blue)](https://wiki.pine64.org/wiki/PineCone)
[![SDK](https://img.shields.io/badge/SDK-Info-red)](https://pine64.github.io/bl602-docs/)

## 🔗 Project Overview

The Post Quantum Key Exchange Mechanisms for the IOT  project was developed by from Schmalkalden University of Applied Sciences.

> [!NOTE]
> This project leverages **Pine Cone BL602** microcontrollers to provide quantum-resistant key establishment using **ML-KEM-512 (Kyber)**, integrated with **AES-CCM** for secure, authenticated CoAP communication.

> [!TIP]
> Equipped with Wi-Fi connectivity and a modular architecture, the system separates network setup from cryptographic logic, enabling a user-friendly implementation of secure end-to-end messaging on constrained embedded devices.

> [!IMPORTANT]
> Implementing post-quantum security now is critical to defend against **"Harvest Now, Decrypt Later"** attacks, ensuring that long-term IoT data remains secure even when quantum computing becomes available.
---

## 📖 Abstract

*As the development of quantum computing, standard IoT security will become obsolete. The implementation in this project involves a **Post-quantum Key Exchange** that is specifically developed to work with resource-constrained IoT devices (PineCone BL602). We demonstrate a secure, modular, **Wi‑Fi/CoAP** communication channel by means of combining **ML-KEYM (Kyber)** to establish key and **AES-CCM** to encrypt and decrypt the key. This demonstration of concept shows that there are ways to protect even low-powered embedded devices against future quantum attacks even nowadays.*

## System Scenario
---
The architecture illustrates a two-node secure IoT communication model built on PineCone (BL602) devices. The Sender initiates communication by discovering the Gateway over the local Wi-Fi network using CoAP broadcast, then retrieves the Gateway’s ML-KEM public key. A post-quantum shared secret is established through ML-KEM encapsulation and decapsulation, after which both devices derive a symmetric AES-128 key using HKDF-SHA256. The Sender encrypts application data using AES-CCM and transmits it securely via CoAP over UDP. On the Gateway side, the message is authenticated, decrypted, validated against replay attacks using a nonce cache, and displayed on the OLED interface. This architecture demonstrates a layered security design combining post-quantum key exchange, secure key derivation, authenticated encryption, and runtime validation mechanisms for embedded IoT environments.


![IOT jpg](https://github.com/user-attachments/assets/b009deb4-f060-4505-b8df-edbeb16900cf)

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

The sniffer:
Sniff the data packets from the sender and  gateway.

---
## Prototype 
<img width="1843" height="861" alt="Screenshot from 2026-02-24 02-35-17" src="https://github.com/user-attachments/assets/5744068b-43db-4e02-9639-ece3fc5effd7" />

## 🎥 Demonstration
[Watch full demo of project with MIMT and tamper attacks](prototype)

> [!Note]
> Click View Raw to access videos



## 🔑 Crypto Explanation

The system implements a hybrid cryptographic scheme designed for constrained nodes:

* **Post-Quantum Key Establishment (ML-KEM):**
    * The system uses **ML-KEM-512** (Kyber), a lattice-based mechanism standardized by NIST [10, 48].
    * It relies on the hardness of the Module-Learning with Errors (MLWE) problem [46].
    * The Gateway holds a long-term key pair in flash memory, while the Sender encapsulates a secret using the Gateway's public key to create a shared secret [13, 56].
* Key Derivation (HKDF):
    * The 32-byte shared secret from ML-KEM is passed through **HKDF-SHA-256** [58].
    * This derives a specific 128-bit symmetric key for the session [58].
* Authenticated Encryption (AES-CCM):
    * Data is secured using AES-128-CCM (Counter with CBC-MAC) .
    * This provides both confidentiality (encryption) and integrity (authentication) in a single pass, suitable for low-power constraints .
    * Messages include nonce management to handle state transitions from handshake to secure data .
 


## 🛡️ Security Analysis

* **Quantum Resistance:** By utilizing ML-KEM-512, the system protects against future quantum computing attacks that could break classical RSA or ECC .
* **Confidentiality & Integrity:** The use of AES-CCM ensures that payloads are unreadable to eavesdroppers and that any tampering is detected via authentication tags .
* **Forward Secrecy:** The protocol generates a unique session key for the transaction via the encapsulation process .
* **Traffic Validation:** Network analysis using a dedicated Sniffer node and Wireshark confirms that payloads are encrypted and distinct from headers .

## ⚠️ Limitations

* **Payload Format:** The current prototype uses a custom payload structure rather than fully compliant CBOR/COSE encoding or OSCORE .
* **Parameter Sets:** The implementation currently supports ML-KEM-512. It does not yet support larger parameter sets like ML-KEM-768 or ML-KEM-1024 .
* **Hardware Constraints:** The solution is designed for the memory and energy constraints of small embedded devices (BL602), limiting the complexity of primitives .

## 🏴‍☠️ Threat Model

* **Harvest Now, Decrypt Later:** Addresses the threat of attackers capturing current encrypted traffic to decrypt it later when quantum technology matures .
* **Replay Attacks:** The system employs freshness rules and checks for duplicates/unexpected messages to prevent replay attacks .
* **Passive Eavesdropping:** Unauthorized entities listening on the Wi-Fi network see only encrypted blobs (ML-KEM ciphertexts and AES-CCM payloads) .
---

## 🔐 Security Assumptions

* **Trusted Gateway:** The Gateway is assumed to be a trusted root that securely stores the long-term ML-KEM private key in its internal flash memory .
* **Physical Security:** It is assumed that the physical device (Gateway) maintains the keys in on-chip flash .
* **CoAP Reliability:** The system assumes CoAP over UDP is sufficient for transport, utilizing application-layer reliability where necessary .

## ⚡ Performance Measurements

Performance benchmarks were conducted on the PineCone (BL602) hardware :

* ML-KEM-512 Decapsulation: 11–12 ms (Gateway side) .
* ML-KEM-512 Encapsulation: 11–12 ms (Sender side) .
* AES-CCM Encryption/Decryption: < 1 ms (effectively below timer resolution) .
* Latency Impact: The post-quantum handshake introduces a marginal delay (~10-20ms) compared to typical network latency .
* Resource Usage: Code size and RAM utilization remain within the limits of the microcontroller .

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

### ✅ Tamper detection (Sender rate check) + Gateway auth monitoring
- Sender has a simple timing-based “tamper” heuristic (too-fast send triggers flag)
- Gateway detects tampering reliably by AES-CCM auth failure (tag mismatch)

> [!NOTE]
>  AES-CCM authentication failure is the real cryptographic tamper detection mechanism.

---

## Hardware requirements

### Mandatory
- 2 × PineCone BL602 boards
  - One as **Sender**
  - One as **Gateway**
- 1 × Wi-Fi access point/router (same LAN)

### Gateway extras 
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

### 💡 Why It Matters Today
---

Organizations are already preparing for **Post-Quantum Cryptography (PQC) migration**. This project demonstrates how quantum-resistant security can be implemented on low-power microcontrollers like PineCone (BL602), making it highly relevant for companies planning secure IoT architectures for the next decade.

