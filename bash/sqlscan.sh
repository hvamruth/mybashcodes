#!/bin/bash

echo "Enter the URL of the website to scan:"
read website

echo "Enter the parameter to test for SQL injection:"
read parameter

echo "Scanning $website for SQL injection vulnerabilities..."

# Use curl to send a GET request to the website with the parameter
output=$(curl -s "$website?$parameter=1'")

if [[ $output == *"SQL"* ]]; then
    echo "SQL injection vulnerability found."
else
    echo "No SQL injection vulnerability found."
fi
This script prompts the user to enter the URL of the website they want to scan and the parameter they want to test for SQL injection. The script then uses the curl command to send a GET request to the website with the parameter, appending the value "1'" to the parameter. This value is a common payload used in SQL injection attacks.

The output of the curl command is saved in the variable $output. The script then uses a conditional statement to check if the output contains the string "SQL". If it does, the script outputs "SQL injection vulnerability found.". Otherwise, it outputs "No SQL injection vulnerability found."

It's important to note that this script is a very basic example of an SQL injection vulnerability scan and it is not a substitute for a professional web application security scan. This script will only check the website for a specific payload and it assumes that the website is vulnerable to SQL injection if the payload returns an error message.

You can use this as a starting point and modify as per your requirement like adding more functionality or automating the process of scanning.

There are several other tools you can use to scan for SQL injection vulnerabilities like OWASP ZAP, Nessus and Burp Suite. These tools are more advanced and provide more detailed information about the vulnerabilities found.




