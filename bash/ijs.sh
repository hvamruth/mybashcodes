#!/bin/bash

echo "Scanning web application for Invalid JavaScript vulnerabilities..."

# Use curl to download the source code of the web page
output=$(curl -s http://example.com)

# Check if the output contains the string "<script>"
if [[ $output == *"<script>"* ]]; then
    echo "Vulnerability: Web page contains JavaScript code"
else
    echo "Secure: Web page does not contain JavaScript code"
fi