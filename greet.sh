#!/bin/bash
read -r -p "Enter your name: " name
if [ -z "$name" ]; then
    echo "Error: Name cannot be empty"
else
    echo "Hello, $name!"
fi
