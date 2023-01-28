#!/bin/bash

echo "Checking for available kernel patches..."

update=$(apt-get upgrade --dry-run | grep -i linux-image)

if [[ -z "$update" ]]; then
    echo "No kernel patches available."
else
    echo "Kernel patches available:"
    echo "$update"
    read -p "Do you want to apply the patches? (y/n) " confirm
    if [ "$confirm" == "y" ]; then
        echo "Applying kernel patches..."
        sudo apt-get upgrade
    else
        echo "Kernel patches will not be applied."
    fi
fi