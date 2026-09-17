# 🚀 Automated Web Server Deployment on AWS EC2 using Bash Scripting

## 📌 Overview
This project demonstrates automated infrastructure provisioning and application deployment on **AWS EC2** using **Bash Shell Scripting (User Data)** and **Nginx Web Server**.

## 🏗️ Architecture & Tools Used
- **Cloud Provider:** AWS (Amazon Web Services)
- **Compute Service:** AWS EC2 (Ubuntu 22.04 LTS)
- **Web Server:** Nginx
- **Automation:** Bash / User Data Shell Script
- **Networking:** Security Groups (Ports 22 & 80)

---

## 🛠️ Project Implementation Steps

### Step 1: Security Group Configuration
Configured inbound firewall rules:
- **SSH (Port 22):** Administrative access.
- **HTTP (Port 80):** Public web access (`0.0.0.0/0`).

### Step 2: Automation Script (User Data)
Attaching the following script during instance launch to automate update, installation, and deployment:

```bash
#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
