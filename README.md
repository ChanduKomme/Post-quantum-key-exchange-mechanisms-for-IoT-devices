# Post-Quantum Key Exchange for IoT (BL602 Implementation) 🔐

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Bouffalo_Lab_BL602-blue)](https://www.bouffalolab.com/)
[![Crypto](https://img.shields.io/badge/Crypto-ML--KEM--512_%2B_AES--CCM-green)](https://csrc.nist.gov/projects/post-quantum-cryptography)

> **A Proof-of-Concept for integrating NIST-standardized Post-Quantum Cryptography (ML-KEM/Kyber) into resource-constrained IoT devices.**

## 📖 Abstract
[cite_start]Innovations such as post-quantum cryptography have created new needs for secure connections between devices that will be part of a long-term ecosystem[cite: 5]. [cite_start]Currently, IoT devices rely on asymmetric cryptography that may be compromised by future quantum computers[cite: 6]. 

[cite_start]This project implements a **Post-Quantum Key Agreement Protocol** for the IoT[cite: 8]. [cite_start]Using **Pine Cone BL602** microcontrollers, we demonstrate a secure connection where a Sender and Gateway establish a shared secret using **ML-KEM-512 (Kyber)** and protect data using **AES-128-CCM** over **CoAP/UDP**[cite: 9, 10, 11].

## 🏗️ System Architecture

[cite_start]The system utilizes a modular architecture enabling independent operation of transport, key establishment, and data security functions[cite: 33].

### 1. Gateway Node (Server)
* [cite_start]**Hardware:** Pine Cone BL602 with an OLED display (I2C)[cite: 88, 118].
* [cite_start]**Role:** Maintains the long-term ML-KEM-512 key pair in internal flash memory[cite: 13].
* [cite_start]**Function:** Listens for CoAP requests, performs KEM decapsulation, derives the session key via HKDF, and decrypts the AES-CCM payload[cite: 155].
* [cite_start]**Output:** Displays decrypted plaintext on the OLED screen and flashes an LED upon successful authentication[cite: 93, 118].

### 2. Sender Node (Client)
* [cite_start]**Hardware:** Pine Cone BL602[cite: 9].
* **Role:** Initiates secure communication.
* [cite_start]**Function:** Retrieves the Gateway's public key via CoAP, encapsulates a shared secret (ML-KEM), derives the AES key, and transmits encrypted data[cite: 13, 136, 138].

### 3. Sniffer Node (Passive Monitor)
* [cite_start]**Hardware:** Pine Cone BL602 (Minimal configuration)[cite: 122].
* **Role:** Network Traffic Analysis and Replay Detection.
* [cite_start]**Function:** Operates in Wi-Fi Monitor Mode to capture IEEE 802.11 frames and stream them via UART to a host PC[cite: 124, 125].
* [cite_start]**Analysis:** Allows traffic visualization in Wireshark to verify encryption and detect anomalies[cite: 15, 176].

## 🔐 Cryptographic Stack

[cite_start]This project strictly adheres to the following hybrid scheme recommended for IoT constraints[cite: 8, 58]:

1.  **Key Encapsulation Mechanism (KEM):**
    * [cite_start]**Algorithm:** ML-KEM-512 (Kyber)[cite: 10, 48].
    * [cite_start]**Level:** NIST Security Level 1 (comparable to AES-128)[cite: 48].
    * [cite_start]**Parameters:** Ciphertext size 768 bytes, Shared Secret 32 bytes[cite: 49].
2.  **Key Derivation Function (KDF):**
    * [cite_start]**Algorithm:** HKDF-SHA-256[cite: 58].
    * [cite_start]**Input:** Shared Secret (from KEM)[cite: 57].
    * [cite_start]**Output:** 128-bit Symmetric Key[cite: 58].
3.  **Authenticated Encryption (AEAD):**
    * [cite_start]**Algorithm:** AES-128-CCM (Counter with CBC-MAC)[cite: 11, 65].
    * [cite_start]**Role:** Provides confidentiality and integrity for CoAP payloads[cite: 65].

## ⚡ Performance Evaluation

Benchmarks were measured on the BL602 (RISC-V) hardware:

| Operation | Time | Notes |
| :--- | :--- | :--- |
| **ML-KEM-512 Encapsulation** | ~11-12 ms | [cite_start]Sender Side [cite: 167] |
| **ML-KEM-512 Decapsulation** | ~11-12 ms | [cite_start]Gateway Side [cite: 167] |
| **AES-CCM Encrypt/Decrypt** | < 1 ms | [cite_start]Negligible overhead [cite: 168] |

[cite_start]**Resource Usage:** Memory usage remains within the board's limits, with ciphertexts stored in static buffers and payloads in RAM[cite: 172, 173].

## 🔌 Hardware & Wiring

[cite_start]**Board:** 3x Pine Cone BL602 (Bouffalo Lab)[cite: 88].

| Peripheral | Connection | Role |
| :--- | :--- | :--- |
| **Status LED** | GPIO Pin | [cite_start]Blinks on successful decrypt/auth [cite: 93] |
| **OLED Display** | I2C Interface | [cite_start]Displays decrypted plaintext on Gateway [cite: 118] |
| **UART** | USB Serial | [cite_start]Debug logging and Sniffer stream [cite: 91, 125] |

## 🚀 Usage Guide

### 1. Firmware Roles
* [cite_start]**Gateway:** Initialize -> Connect Wi-Fi -> Load Keys -> Start CoAP Server[cite: 140, 154].
* [cite_start]**Sender:** Initialize -> Connect Wi-Fi -> GET Public Key -> POST Encrypted Data[cite: 158, 159].
* [cite_start]**Sniffer:** Initialize -> Set Monitor Mode -> Stream to UART[cite: 144, 145].

### 2. Operational Flow
1.  [cite_start]**Boot Gateway:** It connects to the network via DHCP and waits for requests[cite: 157].
2.  [cite_start]**Boot Sender:** It automatically discovers the Gateway and requests the Public Key (`/pqkem-pk`)[cite: 158].
3.  [cite_start]**Handshake:** Sender encapsulates the key and sends the ciphertext + AES-encrypted payload (`/pqkem-data`)[cite: 159].
4.  **Verification:**
    * Gateway decrypts the message.
    * [cite_start]**OLED** displays the plaintext[cite: 162].
    * [cite_start]**LED** flashes green[cite: 163].

## 📚 References

* [cite_start]**[1] Schmalkalden University of Applied Sciences**[cite: 1].
* [cite_start]**[2] Corresponding Author et al.**, "Post Quantum Key Exchange Mechanisms for the IOT", *Internet of Things Projects 2025*[cite: 2, 3, 4].
* [cite_start]**[3] NIST FIPS:** ML-KEM / Kyber Standards[cite: 46].
* [cite_start]**[4] RFC 7252:** The Constrained Application Protocol (CoAP)[cite: 59].
* [cite_start]**[5] RFC 9052:** CBOR Object Signing and Encryption (COSE)[cite: 63].
