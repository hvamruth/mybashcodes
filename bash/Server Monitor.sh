#!/bin/bash

while true; do
    clear
    echo "Server Monitor:"
    echo "1. Check Apache status"
    echo "2. Check MySQL status"
    echo "3. Check disk usage"
    echo "4. Exit"
    read -p "Enter your choice: " choice
    case $choice in
        1)
            service apache2 status
            sleep 5
            ;;
        2)
            service mysql status
            sleep 5
            ;;
        3)
            df -h
            sleep 5
            ;;
        4)
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





