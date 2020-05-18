#!/bin/bash 

#make the nmap directory
mkdir nmap

#get name for subfiles
echo -n "Enter name for subfile name:" 
read SUBFILE

#get target ip
echo -n "Enter the target IP:"
read TARGET_IP
echo "Starting nmap scan on:" $TARGET_IP

#start nmap scan

nmap -Pn -sV -sC -oA nmap/$SUBFILE $TARGET_IP;

#tell the user the scan has finished
echo "Your scan on " $TARGET_IP "has finished."
echo "Check the new nmap directory for a saved version of the scan."
