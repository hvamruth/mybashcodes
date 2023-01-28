#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Enter the parameter to test for IDOR:"
read parameter

echo "Scanning $website for IDOR vulnerabilities..."

# Use curl to send a GET request to the website with the parameter and a known value
output=$(curl -s "$website?$parameter=known_value")

# Check if the response contains sensitive information
if [[ $output == *"sensitive_information"* ]]; then
    echo "IDOR vulnerability found."
else
    echo "No IDOR vulnerability found."
fi