#!/bin/bash

#using tr to remove the % and consider as integer so that it can compare in if condition
#NR , awk always consider as records, so Numer of Records is consider as NR in 2nd row ,  5th column
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%' )
#testing disk_usage=95

# adding % in the output statement so that it become user friendly
echo "Current disk usage is ${disk_usage}%"

if (( $disk_usage >= 90 ))
then
	echo "state:CRITICAL"
elif (( $disk_usage >= 70 && $disk_usage < 90))
then
	echo "status:WARNING"
else
	echo "status: OK"
fi
