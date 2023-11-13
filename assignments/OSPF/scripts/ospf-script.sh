#!/bin/bash
################################################################################
# Ben Newton
# University of North Carolina at Chapel Hill
# October 2, 2014
################################################################################
#Modified for Fabric by Tristan Jordan
# set up this network where each node is a router. 
#
#    A--10.1.4.2------10.1.4.1--D
#    |                          |
# 10.1.1.1                   10.1.3.2
#    |                          |
#    |                          |
# 10.1.1.2                   10.1.3.1
#    |                          |
#    B--10.1.2.1------10.1.2.2--C

#DAEMONS="/etc/quagga/daemons"
ZEBRA_SAMPLE="/usr/share/doc/quagga/examples/zebra.conf.sample"
ZEBRA="/etc/quagga/zebra.conf"
ZEBRA_TEMP="/tmp/zebra"
OSPFD_SAMPLE="/usr/share/doc/quagga/examples/ospfd.conf.sample"
OSPFD="/etc/quagga/ospfd.conf"
OSPFD_TEMP="/tmp/ospfd"


# look for this file, and if it is there assume we are rebooting instead of 
# booting the first time, therefore everything is alreay installed and 
# configured, so skip.
if [[ ! -f $OSPFD ]]; then
    #first update
    sudo apt-get update

    #install quagga and traceroute
    sudo apt-get -y install quagga traceroute
    
    #determine first part of hostname
    HOST=`hostname | awk -F'.' '{print $1}'`
    ETH1IP=`ip addr | grep inet | grep enp7s0 | awk -F " " '{print $2}'`
    ETH2IP=`ip addr | grep inet | grep enp8s0 | awk -F " " '{print $2}'`
    NET1=`echo $ETH1IP | sed -e 's/.\//0\//g'`
    NET2=`echo $ETH2IP | sed -e 's/.\//0\//g'`
    
    #copy sample zebra config file and modify
    sudo echo "interface lo" >> $ZEBRA_TEMP
    sudo echo " description loopback" >> $ZEBRA_TEMP
    sudo echo " ip address 127.0.0.1/8" >> $ZEBRA_TEMP
    sudo echo " ip forwarding" >> $ZEBRA_TEMP
    sudo echo "!" >> $ZEBRA_TEMP
    sudo echo "interface enp7s0" >> $ZEBRA_TEMP
    sudo echo " description enp7s0" >> $ZEBRA_TEMP
    sudo echo " ip address $ETH1IP" >> $ZEBRA_TEMP
    sudo echo " ip forwarding" >> $ZEBRA_TEMP
    sudo echo "!" >> $ZEBRA_TEMP
    sudo echo "interface enp8s0" >> $ZEBRA_TEMP
    sudo echo " description enp8s0" >> $ZEBRA_TEMP
    sudo echo " ip address $ETH2IP" >> $ZEBRA_TEMP
    sudo echo " ip forwarding" >> $ZEBRA_TEMP
    sudo echo "log file /var/log/quagga/zebra.log" >> $ZEBRA_TEMP
    sudo mv $ZEBRA_TEMP $ZEBRA

    #copy sample ospfd config file and modify
    sudo echo "interface enp7s0" >> $OSPFD_TEMP
    sudo echo "interface enp8s0" >> $OSPFD_TEMP
    sudo echo "router ospf" >> $OSPFD_TEMP
    sudo echo "network $NET1 area 0" >> $OSPFD_TEMP
    sudo echo "network $NET2 area 0" >> $OSPFD_TEMP
    sudo echo "log file /var/log/quagga/ospfd.log" >> $OSPFD_TEMP
    sudo mv $OSPFD_TEMP $OSPFD

    #copy sample vtysh config file
    #append line to environment to ensure VTYSH works right
    sudo cp /etc/environment /tmp/environment
    sudo chmod ugo+rw /tmp/environment
    sudo echo "VTYSH_PAGER=more" >> /tmp/environment
    sudo mv /tmp/environment /etc/environment
    
fi


