#!/bin/bash

echo "Enter employee name : "
read name
echo "Enter the project name : "
read project
date=$(date "+%d-%b-%Y %H:%M")

echo "------------------------------------------"
echo "Employee Report"
echo "------------------------------------------"
echo "Employee : $name"
echo "Project : $project"
echo "Today's Date : $date"
echo "------------------------------------------"
