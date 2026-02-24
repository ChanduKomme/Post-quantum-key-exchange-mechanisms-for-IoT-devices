# Post-Quantum Key Exchange for IoT Devices(BL602 Implementation) 🔐

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Bouffalo_Lab_BL602-blue)](https://www.bouffalolab.com/)
[![Crypto](https://img.shields.io/badge/Crypto-ML--KEM--512_%2B_AES--CCM-green)](https://csrc.nist.gov/projects/post-quantum-cryptography)
## 🔗 Project Overview

The "Post Quantum Key Exchange Mechanisms for the IOT"** project was developed by from Schmalkalden University of Applied Sciences.

> [!NOTE]
> This project leverages **Pine Cone BL602** microcontrollers to provide quantum-resistant key establishment using **ML-KEM-512 (Kyber)**, integrated with **AES-CCM** for secure, authenticated CoAP communication.

> [!TIP]
> Equipped with Wi-Fi connectivity and a modular architecture, the system separates network setup from cryptographic logic, enabling a user-friendly implementation of secure end-to-end messaging on constrained embedded devices.

> [!IMPORTANT]
> Implementing post-quantum security now is critical to defend against **"Harvest Now, Decrypt Later"** attacks, ensuring that long-term IoT data remains secure even when quantum computing becomes available.
---

## 📖 Abstract

Innovations such as post-quantum cryptography have created new needs for secure connections between devices that will be part of a long-term ecosystem . Currently, all existing Internet of Things (IoT) devices use asymmetric key-based cryptography, enabling an advanced level of security today but may possibly be compromised by quantum computers in the future . Therefore, all current secure communication channels with IoT devices will ultimately end with an encrypted and decrypted view of the data ever exchanged through them .

The implementation and use of quantum resilient security in very small form-factor IoT devices are still being addressed because of the limitations imposed on these small embedded electronic devices, in terms of available RAM/memory, energy/battery life, bandwidth, etc . A post-quantum key agreement protocol for the IoT will be developed in this project to fill a continuing gap in this area . A pair of IoT devices (PineCone/BL602) will demonstrate a proof-of-concept by communicating across a local Wi-Fi network using CoAP as the application layer protocol .

First, a post-quantum key establishment mechanism (KEM) from the Kyber family, designated as ML-KEM by NIST will establish a shared secret between the two nodes . This shared secret will subsequently be used in tandem with an encryption/authentication mechanism based on AES-CCM, providing confidentiality and integrity during CoAP communications . Instead of creating a variety of cryptographic primitives, the focus of the current project is to facilitate integration and to develop a user-friendly experience .

Wi-Fi/IP setup, CoAP communication, key establishment and AEAD encryption/authentication are all separated by implementation to make the protocol logic modular . The long-term post-quantum key pair will be maintained in the internal flash memory of the gateway node, while the sender will engage in the encapsulation of the secret key via a straight CoAP handshake over a secure channel, thus creating a session key . Thereafter, the messages are AEAD encapsulated with key nonce management . Also the states transitions from handshake to secure data .

In order to verify that our protocol is functioning we also examined the traffic patterns using typical network analysis tools, e.g. Wireshark . In conclusion, this project provides a repeatable design methodology for developing a Quantum Resistant Key between a small CoAP-based device and an arbitrary other system . The project has involved a theoretical migration from a Concept design, then development of a Demonstration Prototype, then a Complete End-to-End Demonstration on a commercial IoT Board . This set of components can also be leveraged for other similar platforms .

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

## 1️⃣ Harvest Now, Decrypt Later (Post-Quantum Threat)

**Threat:**  
An attacker records encrypted network traffic today and stores it.  
In the future, when large-scale quantum computers become available, the attacker attempts to decrypt the captured data.

**Mitigation:**  
- The system uses **ML-KEM (Post-Quantum Key Encapsulation Mechanism)**.
- ML-KEM is resistant to known quantum attacks (e.g., Shor’s algorithm).
- Even if traffic is captured today, it remains secure against future quantum decryption attempts.

**Impact:**  
Protects long-term confidentiality of IoT communications.

---

## 2️⃣ Passive Eavesdropping (Wi-Fi Sniffing)

**Threat:**  
An attacker on the same Wi-Fi network captures packets using tools like Wireshark.

**Mitigation:**  
- All sensitive payloads are encrypted using **AES-128-CCM**.
- Shared secret is established using ML-KEM.
- HKDF ensures proper key derivation.
- Observers see only:
  - ML-KEM ciphertext blobs
  - AES-CCM encrypted payloads
  - Authentication tags

**Impact:**  
Captured traffic is computationally infeasible to decrypt.


## 3️⃣  Message Tampering / Integrity Attacks

**Threat:**  
An attacker modifies ciphertext or injects malformed packets.

**Mitigation:**  
- AES-CCM provides authenticated encryption.
- Any bit modification causes authentication failure.
- Gateway rejects message immediately.
- AUTH FAIL event triggered.

**Impact:**  
Guarantees message integrity and authenticity.

---

## 4️⃣  Man-in-the-Middle (MITM) Manipulation

**Threat:**  
An attacker attempts to alter packets during transmission.

**Mitigation:**  
- Shared secret is derived via ML-KEM.
- AES-CCM authentication ensures integrity.
- Modified packets cannot pass authentication verification.

**Impact:**  
Active tampering attempts are detected and blocked.

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
