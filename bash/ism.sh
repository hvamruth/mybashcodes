#!/bin/bash

echo "Scanning web application for Insecure session management vulnerabilities..."

# Use curl to check if the application is using secure cookies
output=$(curl -s -I http://example.com | grep "Set-Cookie")

# Check if the output contains the string "secure"
if [[ $output == *"secure"* ]]; then
    echo "Secure: Application is using secure cookies"
else
    echo "Vulnerability: Application is not using secure cookies"
fi