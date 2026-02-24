#!/bin/bash
echo "This script will create a report.txt file with cpu model and available RAM"
#this will print current operation
echo "Starting system audit for user: $(whoami) "
#this will see the cpu info, give it to grep for filtering and write it to the file
echo "Generating report file and populating it"
cat /proc/cpuinfo | grep "model name" | uniq >report.txt
#this should add the ram info into the same file if i wrote it correctly
free -h | grep "Mem:" >> report.txt
#this should create 5 dummy files using the curlies
echo "Creating test files"
touch log_{1..5}.tmp
#waiting time for creation to complete
sleep 5
#listing what is made
ls -l
#deletion of tmp files
echo "Deleting test files now"
rm *.tmp
#listing again to confirm all is cleaned up
ls
echo "Deleting complete"
echo "End of script"
echo "Audit complete at $(date)"
