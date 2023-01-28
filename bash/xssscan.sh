#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Scanning $website for XSS vulnerabilities..."

# Use curl to send a GET request to the website and pipe the output to grep
output=$(curl -s $website | grep -i "script")

if [[ -z "$output" ]]; then
    echo "No XSS vulnerabilities found."
else
    echo "XSS vulnerabilities found:"
    echo "$output"
fi