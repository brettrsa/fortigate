#/bin/bash
#
# Created By : Brett Johnson
# Date       : 25/05/2012
# Function   : This script creates a debug utilizing 
#             the flow trace function on Fortigate devices
# Usage      : ./fg-debug-gen.sh
#
# Start

echo -e "--------------------------------------------------"
echo -e "       FORTIGATE FLOW TRACE DEBUG GENERATOR"
echo -e "       ------------------------------------\n"
echo -e "Filter options avaliable:\n"
echo -e "addr      ip address"
echo -e "clear     clear filter"
echo -e "daddr     destination address"
echo -e "dport     destination port"
echo -e "negate    inverse filter"
echo -e "port      port"
echo -e "proto     protocol"
echo -e "saddr     source ip address"
echo -e "sport     source port"
echo -e "vd        index of virtual domain"
echo -e "--------------------------------------------------\n"

echo -n "Enter filter option : "
read -r filter

echo -n "Enter filter value  : "
read -r value

echo -n "Enter the number of packets : "
read -r num

echo -e "---------------------------------------------------\n"
echo -e "         HERE IS THE DEBUG GOODNESS =)\n"            
echo -e "diag debug en"
echo -e "diag debug console timestamp en"
echo -e "diag debug flow show console en"
echo -e "diag debug flow show function en"
echo -e "diag debug flow filter $filter $value"
echo -e "diag debug flow trace start $num" 
echo -e "\n"

# End
