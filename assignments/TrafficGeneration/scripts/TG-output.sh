# Written by Fraida Fund
# Adapted for Fabric by Tristan Jordan
# Addapted for Traffic Generation by Luis C
# !/bin/bash

DST=$1

touch TCP-TG.csv
touch TCP-TG.csv

rm -f TCP-TG.csv


cleanup ()
{
	tcpdump -r packets.pcap tcp > tcp_data.txt
    
    cat tcp_data.txt | sed 's/.[0-9]\{6\} IP.*//' | uniq -c | sed s'/[0-9] [0-9]/,/' | sed s'/^[ ]*//' > FirstTCP-TG.csv
    awk -F '[,;]' 'BEGIN{OFS=","} { "date -d \""$2"\" +%s" | getline secs; $2=secs } 1' FirstTCP-TG.csv > TCP-TG.csv
    
    rm -f tcp_data.txt
    rm -f FirstTCP-TG.csv
    
	exit 0
}

trap cleanup SIGINT SIGTERM

sudo tcpdump -i ens7 -w packets.pcap
