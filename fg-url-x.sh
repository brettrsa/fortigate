#!/bin/bash
#
# Created By  : Brett Johnson
# Date        : 23/05/2012
# Function    : Extract hostname and url from Fortigate Web Filter Log
# Usage       : ./fg-url-x.sh <logname> <output-filename>
#
# Start

cat $1 | tr " " \\n | sed 's/"//g'| egrep "hostname=" | sed 's/hostname=/SITE ID --> /g'| sort | uniq >> $2

# End
