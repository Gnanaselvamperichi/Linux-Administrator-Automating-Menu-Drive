# 🚀 Linux Administrator Toolkit

A **menu-driven Bash script** that automates common Linux system administration tasks. This project is designed for **beginners and aspiring Linux/DevOps engineers** who want hands-on experience with real-world Linux administration using Bash scripting.

---

# 📖 Overview

The **Linux Administrator Toolkit** provides an interactive menu that helps automate common Linux administration tasks such as:

- 🖥️ System Health Monitoring
- 🌐 Network Troubleshooting
- ⚙️ Service Management
- 👤 User Management
- 🔐 File Permission Management
- 📂 File Operations
- 💾 Backup Automation
- 📦 Software Installation & Removal
- 🔄 System Maintenance
- 📊 Process Management

This project is ideal for learning Linux administration while understanding how automation can simplify daily tasks.

---

# ✨ Features

## 🖥️ 1. System Health Monitoring
- Displays CPU load.
- Shows memory usage.
- Displays disk usage.
- Helps monitor overall system performance.

---

## 🌐 2. Network Connectivity Check
- Checks internet connectivity using `ping`.
- Detects network connectivity issues.
- Displays network status.

---

## ⚙️ 3. Service Management
- View service status.
- Restart system services.

---

## 📄 4. View System Logs
- Displays the last 20 lines of system logs.
- Useful for troubleshooting and debugging.

---

## 📊 5. Process Management
- View all running processes.
- Display the total number of running processes.
- Kill a process using its Process ID (PID).

---

## 👤 6. User Management
### Create User
- Checks whether the user already exists.
- Creates a new user.
- Creates a home directory.
- Sets the default shell to `/bin/bash`.
- Assigns a default password.

### Delete User
- Checks whether the user exists.
- Deletes the user along with the home directory.

---

## 🔐 7. File Permission Management
- Change file permissions using `chmod`.
- Accept permission values such as `755`, `644`, etc.

---

## 📂 8. File Management
- Copy files from one directory to another.
- Automatically creates the destination directory if it doesn't exist.

---

## 💾 9. Backup Directory
- Create compressed backups using `tar`.
- Generate `.tar.gz` backup files.

---

## 📦 10. Package Management
### Install Software
- Checks whether the package is already installed.
- Updates package information.
- Installs software using `apt`.

### Uninstall Software
- Removes installed software packages.

---

## 🔄 11. System Maintenance
### Update System
- Updates package lists.
- Upgrades installed packages.

### Disk Cleanup
- Removes unused packages.
- Cleans package cache.

---

# 🛠️ Technologies Used

- Bash Scripting
- Linux
- GNU Core Utilities
- APT Package Manager
- systemctl
- tar
- ping
- chmod
- ps
- kill

---

# 📁 Project Structure

```
linux-administrator-toolkit/
│
├── linux_menu_driven.sh
└── README.md
```

---

# ▶️ How to Run

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/<your-username>/linux-administrator-toolkit.git
```

---

## 2️⃣ Navigate to the Project

```bash
cd linux-administrator-toolkit
```

---

## 3️⃣ Give Execute Permission

```bash
chmod +x linux_menu_driven.sh
```

---

## 4️⃣ Run the Script

```bash
./linux_menu_driven.sh
```

> **Note:** Some operations require **sudo** privileges.

---

# 📋 Menu

```text
======================================================
            Linux Administrator Toolkit
======================================================

1.  Check System Health (CPU, Memory & Disk Usage)
2.  Check Network Connection
3.  View Service Status
4.  Restart Service
5.  View System Logs
6.  View Running Processes
7.  Kill Process
8.  Create User
9.  Delete User
10. Change File Permission
11. Copy Files
12. Backup Directory
13. Install Tools
14. Uninstall Tools
15. System Update
16. Disk Cleanup
17. Exit

======================================================
```

---

# 📚 Linux Commands Used

| Command | Purpose |
|----------|---------|
| `uptime` | Display system load |
| `free -h` | Show memory usage |
| `df -h` | Show disk usage |
| `ping` | Check network connectivity |
| `systemctl` | Manage services |
| `tail` | View recent log entries |
| `ps` | Display running processes |
| `kill` | Terminate a process |
| `useradd` | Create a new user |
| `userdel` | Delete an existing user |
| `chmod` | Change file permissions |
| `cp` | Copy files |
| `mkdir` | Create directories |
| `tar` | Create compressed backups |
| `apt` | Install, update and remove software |

---

# 🎯 Learning Outcomes

This project demonstrates:

- ✅ Bash Functions
- ✅ Conditional Statements
- ✅ Case Statements
- ✅ User Input Handling
- ✅ Linux User Management
- ✅ Service Management
- ✅ Process Management
- ✅ Network Troubleshooting
- ✅ Package Management
- ✅ Backup Automation
- ✅ File Operations
- ✅ File Permission Management
- ✅ System Monitoring
- ✅ Basic Linux Administration
- ✅ Bash Automation

---

# ⚠️ Known Issues

- The script currently supports only **Debian/Ubuntu-based systems** (`apt`).
- Additional error handling can be added for production environments.
- More package managers (`yum`, `dnf`) can be supported in future versions.

---

# 🚀 Future Enhancements

- 🎨 Colored terminal output
- 📝 Logging functionality
- 📧 Email notifications
- ⏰ Cron job automation
- 📊 Interactive monitoring dashboard
- 🐳 Docker management
- ☁️ AWS CLI integration
- 📦 Support for RPM-based Linux distributions
- 🔐 Improved input validation
- 📈 Better error handling

---

# 👨‍💻 Author

**Gnanaselvam P**

**Linux | AWS | Docker | Kubernetes | Terraform | DevOps Enthusiast**

---

## ⭐ Support

If you found this project helpful, consider giving it a **⭐ Star** on GitHub!

Happy Learning! 🚀