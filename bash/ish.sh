#!/bin/bash

echo "Scanning system for Insufficient security controls vulnerabilities..."

# Use nmap to check if the system has a firewall enabled
output=$(nmap --script firewall-bypass -p 22 localhost)

# Check if the output contains the string "filtered"
if [[ $output == *"filtered"* ]]; then
    echo "Secure: Firewall is enabled"
else
    echo "Vulnerability: Firewall is not enabled"
fi