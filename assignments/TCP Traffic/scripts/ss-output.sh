# Written by Fraida Fund
# Adapted for Fabric by Tristan Jordan
# Addapted for TCP_Trafic by Luis C
# !/bin/bash

DST=$1

touch UDP-ss.csv
touch TCP-ss.csv
touch UDP-ss.csv
touch TCP-ss.csv

rm -f UDP-ss.csv
rm -f TCP-ss.csv


cleanup ()
{
	tcpdump -r packets.pcap tcp > tcp_data.txt
    tcpdump -r packets.pcap udp > Udp_data.txt
    
    cat tcp_data.txt | sed 's/.[0-9]\{6\} IP.*//' | uniq -c | sed s'/[0-9] [0-9]/,/' | sed s'/^[ ]*//' > FirstTCP-ss.csv
    awk -F '[,;]' 'BEGIN{OFS=","} { "date -d \""$2"\" +%s" | getline secs; $2=secs } 1' FirstTCP-ss.csv > TCP-ss.csv
    
    cat Udp_data.txt | sed 's/.[0-9]\{6\} IP.*//' | uniq -c | sed s'/[0-9] [0-9]/,/' | sed s'/^[ ]*//' > FirstUDP-ss.csv
    awk -F '[,;]' 'BEGIN{OFS=","} { "date -d \""$2"\" +%s" | getline secs; $2=secs } 1' FirstUDP-ss.csv > UDP-ss.csv
    
    rm -f tcp_data.txt
    rm -f FirstTCP-ss.csv
    rm -f Udp_data.txt
    rm -f FirstUDP-ss.csv
    
    #rm -r packets.pcap
	exit 0
}

trap cleanup SIGINT SIGTERM

sudo tcpdump -i ens7 -w packets.pcap