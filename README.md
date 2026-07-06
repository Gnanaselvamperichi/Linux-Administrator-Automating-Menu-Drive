# 🚀 Linux Automation Script

A menu-driven Bash script that automates common Linux system administration tasks. This project is designed for beginners learning Linux administration and Bash scripting while demonstrating real-world automation tasks.

---

# 📌 Features

The script provides the following automation tasks:

## 🖥️ 1. System Health Monitoring
- Displays CPU load.
- Shows memory usage.
- Displays disk usage.
- Helps monitor overall system health.

---

## 👤 2. Create User
- Checks whether a user already exists.
- Creates a new user.
- Creates a home directory.
- Sets the default shell to `/bin/bash`.
- Assigns a default password.

---

## ❌ 3. Delete User
- Checks if the user exists.
- Deletes the user along with the home directory.
- Prevents deletion of non-existing users.

---

## 🔐 4. Change File Permissions
- Accepts a filename.
- Accepts permission values (e.g., 755, 644).
- Updates file permissions using `chmod`.

---

## 🌐 5. Network Connectivity Check
- Checks internet connectivity using `ping`.
- Displays whether the network connection is working.
- Detects connectivity failures.

---

## 📄 6. View System Logs
- Displays the last 20 lines of the system log.
- Useful for quick troubleshooting.

---

## 📂 7. Copy Files
- Copies files from a source directory to a destination directory.
- Creates the destination directory automatically.
- Displays success or failure messages.

---

## 🛠️ 8. Install Software
- Checks whether a package is already installed.
- Updates package information.
- Installs the requested package using `apt`.

---

# 🖥️ Technologies Used

- Bash Scripting
- Linux
- GNU Core Utilities
- APT Package Manager

---

# 📁 Project Structure

```
linux-automation-script/
│
├── automation.sh
└── README.md
```

---

# ▶️ How to Run

## Clone the Repository

```bash
git clone https://github.com/<your-username>/linux-automation-script.git
```

## Navigate to the Project

```bash
cd linux-automation-script
```

## Give Execute Permission

```bash
chmod +x automation.sh
```

## Run the Script

```bash
./automation.sh
```

> **Note:** Some operations require `sudo` privileges.

---

# 📋 Menu

```
--------------------------------------------
Menu for Automating task

1. Check System Health
2. Create User
3. Delete User
4. Change File Permission
5. Check Network Connection
6. View System Logs
7. Copy Files
8. Install Tools

--------------------------------------------
```

---

# 📸 Example Output

```text
--------------------------------------------
Menu for Automating task

1. Check System Health
2. Create User
3. Delete User
4. Change File Permission
5. Check Network Connection
6. View System Logs
7. Copy Files
8. Install Tools

--------------------------------------------

Enter the choice:
```

---

# 📚 Commands Used

- `uptime`
- `free`
- `df`
- `useradd`
- `userdel`
- `chmod`
- `ping`
- `tail`
- `cp`
- `mkdir`
- `which`
- `apt`
- `chpasswd`

---

# 🎯 Learning Objectives

This project demonstrates:

- Bash Functions
- Conditional Statements
- Case Statements
- User Input
- Linux User Management
- File Permission Management
- Network Troubleshooting
- Log Analysis
- Package Installation
- File Operations
- System Health Monitoring
- Basic Linux Administration
- Shell Scripting Best Practices

---

# ⚠️ Known Issues

- `install_tools()` contains a typo:
  - `reap` should be `read`.
- User input should be quoted consistently for better safety.
- Error handling can be improved.
- The script currently supports only Debian/Ubuntu-based systems (`apt`).

---

# 🚀 Future Enhancements

- Add colored terminal output.
- Add logging functionality.
- Allow custom passwords while creating users.
- Add package removal feature.
- Add backup and restore functionality.
- Improve error handling.
- Improve input validation.
- Support RedHat-based systems (`yum`/`dnf`).
- Add service management.
- Add process monitoring.

---

# 👨‍💻 Author

**Gnanaselvam P**

Linux | AWS | Docker | Kubernetes | Terraform | DevOps Enthusiast

---

⭐ If you found this project useful, consider giving it a star on GitHub!