# Written by Fraida Fund
# Adapted for Fabric by Tristan Jordan
# Addapted for RT window size by Luis C
# !/bin/bash

DST=$1

touch TCP-RT.csv
touch TCP-RT.csv

rm -f TCP-RT.csv


cleanup ()
{
	tcpdump -r packets.pcap tcp > tcp_data.txt
    
    cat tcp_data.txt | sed 's/.[0-9]\{6\} IP.*//' | uniq -c | sed s'/[0-9] [0-9]/,/' | sed s'/^[ ]*//' > FirstTCP-RT.csv
    awk -F '[,;]' 'BEGIN{OFS=","} { "date -d \""$2"\" +%s" | getline secs; $2=secs } 1' FirstTCP-RT.csv > TCP-RT.csv
    
    rm -f tcp_data.txt
    rm -f FirstTCP-RT.csv
    
	exit 0
}

trap cleanup SIGINT SIGTERM

sudo tcpdump -i INTERFACE_NAME -w packets.pcap
