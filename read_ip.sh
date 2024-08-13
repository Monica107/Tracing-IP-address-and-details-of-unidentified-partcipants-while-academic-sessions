#!/bin/bash

# Read the last line of the file
last_line=$(tail -n 1 ipaddr.txt)

# Extract the last IP address from the line
last_ip=$(echo $last_line | awk '{print $NF}')

# Print the last IP address
echo "Last IP Address: $last_ip"

# Run tracepath on the extracted IP address
trace -m  $last_ip

