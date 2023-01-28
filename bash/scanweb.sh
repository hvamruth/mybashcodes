#!/bin/bash

read -p "Enter the website URL: " url

status_code=$(curl -s -o /dev/null -w "%{http_code}" $url)
response_time=$(curl -s -w "Connect: %{time_connect} TTFB: %{time_starttransfer} Total time: %{time_total} \n" -o /dev/null $url)

echo "HTTP status code: $status_code"
echo "Response time: $response_time"