# ⚠️ Disclaimer & Important Notice
This repository contains a collection of payloads designed for the USB Rubber Ducky.

These payloads can be harmful if misused. They are intended for educational purposes, authorized penetration testing, and security research in environments you own and control.

## 🚫 Legal & Ethical Use
1. Do not use these payloads for any illegal or malicious activities.
2. Only use them on devices and networks you have explicit permission to test.
3. Unauthorized use is illegal and unethical. The author is not responsible for any misuse or damage caused by these payloads.

## 🛡️ Safe Testing Environment
It is crucial to use these payloads in a controlled, isolated lab environment that you own. This prevents accidental harm to external systems and keeps your testing legal.

## 🌐 Payloads Requiring Network Connectivity
  - Some payloads (e.g., DNS poisoning, netcat reverse shells, launching online PowerShell scripts) require a public network connection.
  - To test these, you can set up port forwarding and DDNS if necessary on your local router.
  - Alternatively, you can use a Virtual Private Server (VPS) with a public IP address, as I do with my Linux KVM VPS.

## 🔧 Configuration & Tuning
  - Many payloads require specific configuration to work in your environment.
  - Public Script Hosting: For the "launch PowerShell script" payload, you need to host your .ps1 file on a public server. You can use my provided github Powershell Script folder url, host your own on a VPS, or use free services like GitHub. Remember to use the raw file link.
  - Antivirus Interference: Most antivirus software will flag these scripts as malicious. To test them, you may need to temporarily disable your antivirus in your lab environment.
  - User Account Control (UAC): Payloads that require administrator privileges (UAC) may fail if the target computer has an admin password. These may require further tuning for your specific scenario.
