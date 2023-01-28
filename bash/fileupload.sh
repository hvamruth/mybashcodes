#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Enter the parameter to test for file upload:"
read parameter

echo "Scanning $website for file upload vulnerabilities..."

# Use curl to send a POST request to the website with the parameter and a sample file
output=$(curl -s -X POST -F "$parameter=@test.txt" "$website")

# Check if the response contains "File uploaded successfully"
if [[ $output == *"File uploaded successfully"* ]]; then
    echo "File upload vulnerability found."
else
    echo "No file upload vulnerability found."
fi