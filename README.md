# 🔒 Advanced Security Testing Suite

<div align="center">

![Advanced Security Testing Suite](screenshots/hero-banner.png)

![Python](https://img.shields.io/badge/Python-3.13.3+-blue.svg)
![Flask](https://img.shields.io/badge/Flask-2.0+-green.svg)
![License](https://img.shields.io/badge/License-Educational-yellow.svg)
![Status](https://img.shields.io/badge/Status-Active-brightgreen.svg)

**A comprehensive security testing framework for educational and authorized penetration testing purposes**

[Features](#-features)  • [Usage](#-usage) 

</div>

---

## ⚠️ IMPORTANT LEGAL DISCLAIMER

**THIS SOFTWARE IS FOR EDUCATIONAL AND AUTHORIZED SECURITY TESTING PURPOSES ONLY**

### 🚨 READ BEFORE USE

- ✅ **AUTHORIZED USE ONLY**: This tool is designed for legitimate security professionals, researchers, and students
- ✅ **EDUCATIONAL PURPOSE**: Use only in controlled environments for learning cybersecurity concepts
- ✅ **PENETRATION TESTING**: Only use with explicit written permission from system owners
- ❌ **NO MALICIOUS USE**: Any unauthorized or malicious use is strictly prohibited
- ❌ **NO ILLEGAL ACTIVITIES**: Users are responsible for compliance with all applicable laws

### 📋 Legal Requirements

Before using this software, ensure you have:
- [ ] Written authorization from the target system owner
- [ ] Proper legal documentation for penetration testing
- [ ] Understanding of applicable cybersecurity laws in your jurisdiction
- [ ] Ethical approval if used in academic research

**The developers assume NO responsibility for misuse of this software. Users are solely responsible for their actions.**

---

## 🎯 Features

### 🔍 Core Security Testing Capabilities
- **Instagram Login Simulation**: Realistic Instagram login page for phishing awareness training
- **Credential Verification**: Backend validation of usernames and passwords for educational analysis
- **Session Management**: Session ID extraction and management for security research
- **Two-Factor Authentication**: Complete 2FA workflow simulation including code verification
- **CSRF Token Handling**: Advanced token management for comprehensive security testing

### 🛠️ System Information Collection
- **IP Address Tracking**: Visitor IP address collection and geolocation
- **System Information**: Operating system, browser, and device detection
- **Hardware Fingerprinting**: Device model, screen resolution, and hardware specifications
- **Network Analysis**: Connection speed, ISP information, and network characteristics
- **Privacy Protection**: Data anonymization and range estimation for ethical use

### 📊 Monitoring & Analytics
- **Real-time Dashboard**: Live monitoring of visitor activity and interactions
- **Session Tracking**: Persistent session management with detailed logging
- **Rich CLI Interface**: Professional command-line interface with progress indicators
- **Automated Reporting**: Comprehensive security assessment reports and analytics
- **Tunnel Management**: Secure ngrok integration for remote access and testing

---

## 📸 Screenshots

### Main Dashboard
![Main Dashboard](screenshots/dashboard.png)
*Professional command-line interface with security testing options*

### Network Monitoring
![Network Monitoring](screenshots/monitoring.png)
*Real-time network activity monitoring and analysis*

### Security Assessment
![Security Assessment](screenshots/assessment.png)
*Comprehensive security testing results and recommendations*

### Reporting Interface
![Reporting](screenshots/reporting.png)
*Detailed security assessment reports and analytics*

---

## 🚀 Installation

### Prerequisites
- Python 3.13.5 or higher
- pip package manager
- Administrative privileges (for network monitoring)



---

## 💻 Usage

### Basic Usage

1. **Start the Application**
   ```bash
   python main.py
   ```

2. **Select Operation Mode**
   - Start Monitoring: Begin Instagram phishing simulation
   - Clear Logs: Remove all activity traces
   - Setup Tunnel: Configure ngrok tunnel for remote access
   - Exit: Terminate application

3. **Access the Simulation**
   - Navigate to the provided local or tunnel URL
   - Instagram login page will be served to visitors
   - Monitor real-time activity through the CLI dashboard

### How It Works

1. **Victim Access**: User visits the Instagram simulation page
2. **Credential Collection**: Login credentials are captured and verified
3. **Session Extraction**: Valid sessions generate session IDs for analysis
4. **2FA Handling**: If 2FA is enabled, the system presents the 2FA page
5. **Token Management**: CSRF tokens are handled automatically
6. **Data Logging**: All interactions are logged for security analysis

### Data Collected

The tool collects the following information for educational analysis:

**System Information:**
- IP Address and Geolocation
- Operating System and Version
- Browser Type and Version
- Device Model and Hardware Specs
- Screen Resolution and Display Info

**Session Data:**
- Login Credentials (for verification)
- Session IDs (when authentication succeeds)
- 2FA Codes (if applicable)
- CSRF Tokens and Security Headers
- Interaction Timestamps and Patterns

---





## 📚 Educational Use Cases

### 🎓 Academic Research
- Cybersecurity education and training
- Social engineering awareness programs
- Network security coursework
- Ethical hacking certification preparation

### 🏢 Professional Training
- Security team training exercises
- Penetration testing skill development
- Incident response simulation
- Security awareness programs

### 🔬 Research Applications
- Cybersecurity research projects
- Vulnerability assessment studies
- Security tool development
- Academic thesis research

---

## 🛡️ Security & Privacy

### Data Protection
- **Anonymization**: All collected data is anonymized by default
- **Encryption**: Sensitive data is encrypted at rest and in transit
- **Minimal Collection**: Only necessary data is collected
- **Automatic Cleanup**: Data is automatically purged after sessions

### Privacy Features
- IP address range estimation instead of exact IPs
- Device model generalization
- Operating system version ranges
- Network speed approximations

### Ethical Guidelines
- Always obtain proper authorization
- Respect privacy and data protection laws
- Use only for legitimate security purposes
- Document all testing activities

---





## 📄 License

This project is licensed under the **Educational Use License** - see the [LICENSE](LICENSE) file for details.

### License Summary
- ✅ Educational use permitted
- ✅ Research use permitted
- ✅ Authorized security testing permitted
- ❌ Commercial use requires permission
- ❌ Malicious use prohibited
- ❌ Unauthorized testing prohibited

---

## 🆘 Support

### Getting Help


- 📧 **Contact**: telegram @sincryptzork

### Reporting Security Issues

If you discover a security vulnerability, please:
1. **DO NOT** create a public issue msg me on telegram @sincryptzork
3. Include detailed information about the vulnerability
4. Allow time for responsible disclosure

---


<div align="center">

**⚡ Built with ❤️ for the cybersecurity community**

[⬆ Back to Top](#-advanced-security-testing-suite)

</div> 
