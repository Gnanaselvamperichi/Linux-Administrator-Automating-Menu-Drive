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
    reap -p "Enter the tool name to install: " tool
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

Uninstall_tools()
{
    remove -p "Enter tool name to Uninstall: " tool
    sudo apt remove "$tool" -y
    echo "Tool is Uninstalled"
}


service_status()
{
    read -p "Enter service name: " service

    systemctl status "$service"
}

restart_service()
{
    read -p "Enter service name: " service
    sudo systemctl restart "$service"
    echo "Service restarted."
}

backup_directory()
{
    read -p "Enter source folder: " source

    read -p "Enter backup file name: " backup

    tar -czvf "$backup.tar.gz" "$source"

    echo "Backup created successfully."
}

system_update()
{
    sudo apt update

    sudo apt upgrade -y

    echo "System Updated Successfully."
}

disk_cleanup()
{
    sudo apt autoremove -y

    sudo apt clean

    echo "Disk cleaned successfully."
}

running_processes()
{
    ps -ef

    echo

    echo "Total Running Processes:"

    ps -e | wc -l
}

kill_process()
{
    read -p "Enter Process ID (PID): " pid

    sudo kill -9 "$pid"

    echo "Process Killed."
}


echo "======================================================"
echo "            Linux Administrator Toolkit"
echo "======================================================"
echo
echo "1.  Check System Health (CPU, Memory & Disk Usage)"
echo "2.  Check Network Connection"
echo "3.  View Service Status"
echo "4.  Restart Service"
echo "5.  View System Logs"
echo "6.  View Running Processes"
echo "7.  Kill Process"
echo "8.  Create User"
echo "9.  Delete User"
echo "10. Change File Permission"
echo "11. Copy Files"
echo "12. Backup Directory"
echo "13. Install Tools"
echo "14. Uninstall Tools"
echo "15. System Update"
echo "16. Disk Cleanup"
echo "17. Exit"
echo
echo "======================================================"

read -p "Enter your choice: " choice

case $choice in
    1)  system_health ;;
    2)  network_check ;;
    3)  service_status ;;
    4)  restart_service ;;
    5)  view_logs ;;
    6)  running_processes ;;
    7)  kill_process ;;
    8)  create_user ;;
    9)  delete_user ;;
    10) change_permission ;;
    11) copy_files ;;
    12) backup_directory ;;
    13) install_tools ;;
    14) Uninstall_tools ;;
    15) system_update ;;
    16) disk_cleanup ;;
    17) echo "Thank you for using Linux Administrator Toolkit!"; exit ;;
    *)  echo "Invalid option. Please select a valid choice." ;;
esac