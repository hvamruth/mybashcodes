#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Scanning $website for Insecure Cryptographic Storage vulnerabilities..."

# Use curl to download the website's source code
output=$(curl -s $website)

# Check if the source code contains any hard-coded encryption keys
if [[ $output == *"encryption_key"* ]]; then
    echo "Insecure Cryptographic Storage vulnerability found."
else
    echo "No Insecure Cryptographic Storage vulnerability found."
fi