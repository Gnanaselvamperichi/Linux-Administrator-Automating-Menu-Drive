# 🚀 Linux Automation Script

A simple Bash script that automates common Linux system administration tasks through a menu-driven interface. This project is designed for beginners who are learning Linux administration and Bash scripting.

## 📌 Features

The script provides the following automation tasks:

### 👤 1. Create a User
- Checks whether a user already exists.
- Creates a new user if it doesn't exist.
- Creates a home directory.
- Sets the default shell to `/bin/bash`.
- Assigns a default password.

### 📂 2. Copy Files
- Copies files from a source directory to a destination directory.
- Creates the destination directory automatically if it doesn't exist.
- Displays success or failure messages.

### 💾 3. Monitor Disk Usage
- Retrieves the disk usage percentage of the system.

### 🛠️ 4. Install Software
- Checks whether a tool is already installed.
- Updates package information.
- Installs the requested package using `apt`.

---

## 🖥️ Technologies Used

- Bash Scripting
- Linux
- GNU Core Utilities
- APT Package Manager

---

## 📁 Project Structure

```
linux-automation-script/
│
├── automation.sh
└── README.md
```

---

## ▶️ How to Run

### Clone the repository

```bash
git clone https://github.com/<your-username>/linux-automation-script.git
```

### Navigate to the project

```bash
cd linux-automation-script
```

### Give execute permission

```bash
chmod +x automation.sh
```

### Run the script

```bash
./automation.sh
```

> Some operations require **sudo** privileges.

---

## 📋 Menu

```
1. Create User
2. Copy Files
3. Monitor Disk Usage
4. Install Tools
```

---

## 📸 Example

```
--------------------------------------------
Menu for Automating task
1. Creating user
2. Copy files
3. Monitoring disk usage
4. Installing tools
--------------------------------------------

Enter the choice:
```

---

## 📚 Commands Used

- `useradd`
- `chpasswd`
- `cp`
- `mkdir`
- `df`
- `awk`
- `sed`
- `which`
- `apt`

---

## 🎯 Learning Objectives

This project demonstrates:

- Bash functions
- Conditional statements
- Case statements
- User input
- Linux user management
- File operations
- Package installation
- Basic system administration
- Shell scripting best practices

---

## ⚠️ Known Issues

- The `disk_usage()` function retrieves disk usage but does not display it.
- `install_tools()` contains a typo:
  - `reap` should be `read`.
- User input should be quoted in several places to handle spaces safely.
- Error handling can be improved.

These are good areas for future improvements.

---

## 🚀 Future Enhancements

- Add logging.
- Add colored terminal output.
- Display disk usage percentage.
- Allow custom passwords.
- Add package removal option.
- Improve input validation.
- Support RedHat (`yum`/`dnf`) based systems.
- Add backup functionality.

---

## 👨‍💻 Author

**Gnanaselvam P**

Linux | AWS | Docker | Kubernetes | Terraform | DevOps Enthusiast

---