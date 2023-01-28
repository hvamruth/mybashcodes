#!/bin/bash

echo "Scanning for memory errors..."

memtest=$(memtest86+)

if [[ $memtest == *"errors"* ]]; then
    echo "Errors found in memory."
    echo "$memtest"
else
    echo "No errors found in memory."
fi