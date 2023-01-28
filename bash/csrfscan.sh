#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Enter the parameter to test for CSRF:"
read parameter

echo "Scanning $website for CSRF vulnerabilities..."

# Use curl to send a GET request to the website with the parameter
output=$(curl -s -I "$website")

# Check if the response headers contain the 'X-CSRF-Token'
if [[ $output == *"X-CSRF-Token"* ]]; then
    echo "CSRF vulnerability found."
else
    echo "No CSRF vulnerability found."
fi