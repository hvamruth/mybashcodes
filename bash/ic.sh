#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Scanning $website for Insecure Communications vulnerabilities..."

# Use nmap to check if the website supports SSL/TLS
output=$(nmap --script ssl-enum-ciphers -p 443 $website)

# Check if the output contains the string "TLS 1.2"
if [[ $output == *"TLS 1.2"* ]]; then
    echo "Secure Communications: The website supports TLS 1.2"
else
    echo "Insecure Communications: The website does not support TLS 1.2"
fi