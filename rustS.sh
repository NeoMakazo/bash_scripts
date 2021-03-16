#!/bin/bash

# this requires RustScan installed(can be downloaded here: https://github.com/RustScan/RustScan
# run this script in the directory you wish. it'll create the directory to store the files. here it'll be "rust_map"


mkdir rust_map

#get name for subfiles
echo -n "Enter name for subfile name:" 
read SUBFILE

#get target ip
echo -n "Enter the target IP:"
read TARGET_IP
echo "Starting nmap scan on:" $TARGET_IP

#start rustscan scan

rustscan -b 500 -t 1500 -a $TARGET_IP -- -A -Pn -sC -sV -oA rust_map/$SUBFILE || rustscan -b 500 -t 1500 -a $TARGET_IP -- -A -sV -oA rust_map/$SUBFILE;
# *if there is any error with the commands above, please make an issue for it. *

#tell the user the scan has finished
echo "Your scan on " $TARGET_IP "has finished."
echo "Check the new nmap directory for a saved version of the scan."
