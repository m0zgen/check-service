#!/bin/bash
# Check if a service is running
# Author: Yevgeniy Goncharov aka xck, http://sys-adm.in

# ---------------------------------------------------------- VARIABLES #
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/s

# Script name
me=`basename "$0"`

# If no argiments
if [[ -z $1 ]]; then
	echo "Set service name! Example: $me nginx"
	exit 0
fi

# Start service
startSVC(){

	# Start with exception
	systemctl start $1 > /dev/null 2>&1 || ERROR="1"

	if [[ $ERROR == "1" ]]; then
		echo "Service not found"
	fi

}

# Check service
if [[ $(systemctl is-active $1) != "active" ]]; then
	echo "Service not active. Starting..."
	startSVC $1
	sleep 5
fi

exit 0