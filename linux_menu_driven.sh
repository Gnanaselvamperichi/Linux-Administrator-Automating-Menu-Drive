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
echo -e "
1. Check System_Health ( CPU, Memory & disk usage )
2. Create_user
3. Delete_user
4. Change File Permission
5. Check Network Connection
6. View Systemlog
7. Copy files
4. Installing tools"
echo "--------------------------------------------"

read -p "Enter the choice: " choice

case $choice in
        1) system_health ;;
        2) create_user ;;
        3) delete_user ;;
        4) change_permission ;;
        5) network_check ;;
        6) view_logs ;;
        7) copy_files ;;
        8) install_tools ;;
        *) echo "invalid option" ;;
esac