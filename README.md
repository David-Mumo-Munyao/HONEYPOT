# Honeypot Setup Project

## Introduction
This project documents the setup of a honeypot using **Cowrie** (SSH/Telnet) and later extends to **Dionaea** (high-interaction malware honeypot). The goal is to capture real-world attack data and analyze threats.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [VM Setup](#vm-setup)
3. [Cowrie Honeypot Installation](#cowrie-honeypot-installation)
4. [Testing the Honeypot](#testing-the-honeypot)
5. [Dionaea Honeypot](#dionaea-honeypot)
6. [Security Considerations](#security-considerations)
7. [Conclusion](#conclusion)

## Prerequisites
- VirtualBox installed
- Three VMs:
  - **SOC Analyst VM (Kali Linux)**
  - **Victim Client VM (Ubuntu)**
  - **Hacker VM (Kali Linux)**
- Static IP addresses configured

## VM Setup
1. Install VirtualBox from [here](https://www.virtualbox.org/wiki/Downloads)
2. Set up the VMs and assign static IPs
3. Ensure SOC Analyst VM has **Suricata** and **Splunk** installed

## Cowrie Honeypot Installation
1. Install dependencies:
   ```bash
   sudo apt-get install python3-pip build-essential libssl-dev libffi-dev python3-dev
   ```
2. Clone Cowrie:
   ```bash
   git clone https://github.com/cowrie/cowrie.git
   cd cowrie
   ```
3. Install requirements:
   ```bash
   sudo pip3 install -r requirements.txt
   ```
4. Configure Cowrie:
   - Edit `cowrie.cfg` in `/cowrie/etc/`
5. Start Cowrie:
   ```bash
   ./start.sh
   ```

## Testing the Honeypot
- Use the **Hacker VM** to attempt SSH/Telnet access:
  ```bash
  ssh root@192.168.50.101
  ```
- Check logs in `/cowrie/log/`

## Dionaea Honeypot
1. Install Dionaea:
   ```bash
   sudo apt-get install dionaea
   ```
2. Configure Dionaea to simulate vulnerabilities
3. Start Dionaea:
   ```bash
   sudo systemctl start dionaea
   ```

## Security Considerations
- Isolate the honeypot from your main network
- Regularly monitor logs
- Keep the honeypot updated

## Conclusion
This project sets up a honeypot, captures attack data, and prepares for further analysis. Future improvements include automated reporting and integration with SIEM tools.
