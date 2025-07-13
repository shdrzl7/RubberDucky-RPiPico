# RubberDucky-RPiPico
A USB Rubber Ducky project using Raspberry Pi Pico that emulates keystroke injection for automation and penetration testing.

**BadUSB** is a type of cyberattack that leverages the flexibility of USB devices to perform malicious actions when plugged into a target system. Instead of acting like traditional storage, a BadUSB device reprograms its firmware to behave like a **Human Interface Device (HID)** — such as a keyboard or mouse — and executes keystrokes automatically.

This technique can:
- Inject malicious commands rapidly
- Download and execute payloads (e.g., PowerShell scripts)
- Create backdoors or exfiltrate data
- Bypass traditional antivirus or endpoint security tools

### 🧠 How Does It Work?

1. **Reprogramming the USB device**  
   Devices like the Raspberry Pi Pico, Digispark, or original Rubber Ducky are programmed to emulate a keyboard.

2. **Payload delivery**  
   The attacker writes scripts (e.g., DuckyScript or Python HID scripts) that contain automated keystrokes. These scripts can open terminals, download malware, create admin users, etc.

3. **Execution**  
   When plugged in, the system sees the USB device as a keyboard and automatically trusts it. The payload executes immediately without needing physical interaction.

4. **Outcome**  
   Within seconds, the device may:
   - Open PowerShell
   - Disable Windows Defender
   - Download remote tools
   - Install backdoors or collect info

## ⚠️ Important:
BadUSB attacks are very powerful and dangerous. This project is for **educational and authorized testing purposes only**. Always get permission before using such tools in real environments.
---

## 💻 Requirements
- Raspberry Pi Pico (RM11.88)
![Raspberry Pi Pico](Images/RaspberryPi%20Pico.jpg)
- MicroPython or CircuitPython
- USB M to Micro USM M Adapter (RM3.39)
![USB Adapter](Images/USB%20Adapter.jpg)

## 📂 Project Structure
- `payloads/` - DuckyScript-style scripts
- `scripts/` - Python code to run on the Pico
- `docs/` - Additional documentation

## 📸 Screenshots
(Add screenshots here)

## 🛠️ How to Use
(To be filled in after project is done)

## 🔒 Disclaimer
For educational and authorized testing purposes only.
