#!/bin/bash

echo "Hostname : $(hostname)"
echo "Current User : $(whoami)"
echo "Current Date : $(date)"
echo "Linux Kernel Version : $(uname -r)"
echo "Current Directory : $(pwd)"
echo "Disk Usage : $(df -h / | awk 'NR==2 {print $5 }')"
echo "Memory Available : $(free -h | awk 'NR==2 {print $4 }')"
