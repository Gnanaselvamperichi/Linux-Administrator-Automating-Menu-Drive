#! /bin/bash

system_health()
{
    echo "========== SYSTEM HEALTH =========="

    echo
    echo "CPU Load:"
    uptime

    echo
    echo "Memory Usage:"
    free -h

    echo
    echo "Disk Usage:"
    df -h

    echo "==================================="
}

create_user()
{
    read -p "Enter the username:" user
    if id $user &>/dev/null
    then
        echo "$user user already exists"
    else
        echo "$user user doesn't exist....creating it!!"
        sudo useradd -m -s /bin/bash $user &>/dev/null
        echo "$user:123" | sudo chpasswd &>/dev/null
        echo "user created succesfully"
    fi
}

delete_user()
{
    read -p "Enter the username to delete: " username

    if id "$username" &>/dev/null
    then
        sudo userdel -r "$username"
        echo "User deleted Successfully"
    else
        echo "User does not exist."
    fi
}

change_permission()
{
    read -p "Enter the file name: " file
    read -p "Enter the permission (Example: 755): " permission
    chmod "$permission" "$file"
    echo "permission updated."
}

network_check()
{
    echo "Checking Internet Connectivity..."

    ping -c 4 google.com

    if [ $? -eq 0 ]
    then
        echo "Internet Connection is Working."
    else
        echo "Network Problem Detected."
    fi
}

view_logs()
{
    echo "Showing last 20 logs..."

    sudo tail -20 /var/log/syslog
}

copy_files()
{
    read -p "Enter the source path: " src
    read -p "Enter the destination path: " dest
    mkdir -p $dest

    cp -r "$src"/* "$dest"

    if [ $? -eq 0 ]
    then
        echo "File copied succesfully from the $src directory to $dest directory"
    else
        echo "copy command failed"
    fi

}

install_tools()
{
    reap -p "Enter the tool name: " tool
    if which $tool &>/dev/null
    then
        echo "Tool already exists"
    else
        echo "$tool tool is not installed...installing it!!!"
        sudo apt update &>/dev/null
        sudo apt install $tool -y &>/dev/null
        echo "$tool is installed successfully"
    fi
}

echo "--------------------------------------------"
echo "Menu for Automating task"
echo "1. Creating user "
echo -e "2. Copy files
3. Monitoring CPU, Memory & disk usage
4. Installing tools"
echo "--------------------------------------------"

read -p "Enter the choice: " choice

case $choice in
        1) create_user ;;
        2) copy_files ;;
        3) disk_usage ;;
        4) install_tools ;;
        *) echo "invalid option" ;;
esac