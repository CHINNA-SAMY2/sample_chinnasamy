#!/bin/bash
username=$1
if [ -z "$username" ] ; then
echo " usage: ./gitsample.sh <username>"
exit 1
fi
echo "Date: $(Date)" > "${usernaem}.txt"
echo "file ${username}.txt created with system info "
