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
BadUSB attacks are very powerful and dangerous. This project is for educational and authorized testing purposes only. Always get permission before using such tools in real environments.

## 💻 Requirements
- Raspberry Pi Pico (RM11.88)
![Raspberry Pi Pico](Images/RaspberryPi%20Pico.jpg)
- USB M to Micro USM M Adapter (RM3.39)
![USB Adapter](Images/USB%20Adapter.jpg)

## 📂 Project Structure
- `Payloads/` - DuckyScript-style scripts
- `Scripts/` - Python code to run on the Pico
- `lib/` - Required CircuitPython libraries (HID, asyncio, etc.)
- `Casing 3D Print/` - STL files for 3D-printed case (if applicable)

## 🧰 Setup / Installation

1. Download `adafruit-circuitpython-raspberry_pi_pico-en_US-9.2.8.uf2` from [CircuitPython Downloads](https://circuitpython.org/board/raspberry_pi_pico/).
2. Plug in the Pico via USB.
3. It will appear as a USB storage device named `RPI-RP2`.
4. Drag and drop the `.uf2` file onto the RPI-RP2 drive.
5. The Pico will reboot and reappear as `CIRCUITPY`.
6. Download the **Adafruit HID library bundle**: `adafruit-circuitpython-bundle-9.x-mpy-20250711.zip`
7. Extract the `.zip` file.
8. From the extracted folder:
   - Copy `adafruit_hid`, `asyncio`, and `adafruit_wsgi` folders into the `CIRCUITPY/lib/` directory.
   - Also copy `adafruit_debouncer.mpy` and `adafruit_ticks.mpy` into the same `lib/` directory.
9. Delete the default `code.py` in `CIRCUITPY`.
10. Download the script files from this GitHub repo under `Scripts/`:
    - `code.py`
    - `boot.py`
    - `duckyinpython.py`
    - `webapp.py`
    - `wsgiserver.py`
11. Find pre-made payloads at [Hak5 Rubber Ducky Payloads](https://github.com/hak5/usbrubberducky-payloads) or write your own.
12. Rename your desired payload to `payload.dd` and place it in the root of the CIRCUITPY drive.

## 🛠️ How to Use
(To be filled in after project is done)

## 🔒 Disclaimer
For educational and authorized testing purposes only.
