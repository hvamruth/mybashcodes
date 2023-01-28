#!/bin/bash

while true; do
    clear
    echo "Menu Options:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Exit"
    read -p "Enter your choice: " choice
    case $choice in
        1)
            echo "You selected Option 1."
            sleep 2
            ;;
        2)
            echo "You selected Option 2."
            sleep 2
            ;;
        3)
            echo "Exiting program..."
            sleep 2
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            sleep 2
            ;;
    esac
done
This script will display a menu with the options "Option 1", "Option 2", and "Exit" to the user. It will then prompt the user to enter their choice, and the corresponding case block will be executed based on their input. The sleep 2 command is used to pause the script for 2 seconds before returning to the menu. The script will continue to loop until the user selects "Exit" or an invalid option.

You can use this as a starting point and modify as per your requirement.




