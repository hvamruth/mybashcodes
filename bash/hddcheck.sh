#!/bin/bash

read -p "Enter the name of the disk to check (example: sda): " disk

echo "Checking for errors on disk $disk..."

smartctl -H /dev/$disk

if [[ $? -eq 0 ]]; then
    echo "No errors found on disk $disk."
else
    echo "Errors found on disk $disk."
fi