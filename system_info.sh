#!/bin/bash

echo "OS Version:"
cat /etc/os-release

echo -e "\nUsers with bash shell:"
awk -F: '$7 == "/bin/bash" {print $1}' /etc/passwd

echo -e "\nOpen ports:"
ss -tulnp
