#!/bin/bash
# Copyright (c) 2010-2017 Raytheon BBN Technologies
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and/or hardware specification (the "Work") to
# deal in the Work without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Work, and to permit persons to whom the Work
# is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Work.
# 
# THE WORK IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE WORK OR THE USE OR OTHER DEALINGS
# IN THE WORK.


# Usual directory for downloading software in ProtoGENI hosts is `/local`
cd /local
#Get the hostname to see if we are at the server or the client
hn=`echo $HOSTNAME | cut -d'.' -f 1`

##### Check if file is there #####
if [ ! -f "./installed.txt" ]
then
       #### Create the file ####
        sh -i -c `sudo touch "./installed.txt"`

       #### Run  one-time commands ####

       #Install necessary packages
        if [[ $(cat /etc/resolv.conf |grep search|awk '{print $2}') == *instageni.uvm.edu* ]]; then
        	sed -i 's/us.//g' /etc/apt/sources.list
	fi
        sudo apt-get update
        sudo apt-get -y install apache2 iperf & EPID=$!
        wait $EPID

       # Install custom software
       ## Customize apache installation


       ## Reboot the host if needed
fi
##### Run Boot-time commands
# Start services
# If this is the server then start the iperf and configure and start the http server
if [ $hn == "server" ]
then

   # Enable web server stats
   # Needed for Apache 2.2
   sudo /usr/sbin/a2enmod status
   sudo rm /etc/apache2/mods-enabled/status.conf
   # Needed for Apache 2.4
   sudo a2enmod access_compat
   sudo a2enmod info

   # Needed for Apache 2.2
   echo "<Location /server-status>" | sudo tee -a /etc/apache2/sites-available/default > /dev/null
   echo "   SetHandler server-status" |sudo tee -a /etc/apache2/sites-available/default > /dev/null
   echo "   Allow from all" | sudo tee -a /etc/apache2/sites-available/default > /dev/null
   echo "</Location>" | sudo tee -a /etc/apache2/sites-available/default > /dev/null
   echo "ExtendedStatus On" | sudo tee -a /etc/apache2/conf.d/extendedstatus > /dev/null

   # Needed for Apache 2.4
   echo "<Location /server-status>" | sudo tee -a /etc/apache2/apache2.conf> /dev/null
   echo "   SetHandler server-status" |sudo tee -a /etc/apache2/apache2.conf> /dev/null
   echo "   Allow from all" | sudo tee -a /etc/apache2/apache2.conf> /dev/null
   echo "</Location>" | sudo tee -a /etc/apache2/apache2.conf> /dev/null
   echo "ExtendedStatus On" | sudo tee -a /etc/apache2/apache2.conf> /dev/null

   # Copy the website under /var/www/
   sudo cp -R ./website/* /var/www/
   sudo rm -rf /var/www/html
   sudo ln -s /var/www/ /var/www/html

   # Start the webserver
   # Needed for Apache 2.2
   sudo /usr/sbin/apache2ctl restart
   # Needed for Apache 2.4
   sudo /etc/init.d/apache2 force-reload
   # Needed for both
   sudo service apache2 restart 
   

   # Start the iperf server
   sudo mkdir -p /var/www/iperflogs
   iperf_server_log="/var/www/iperflogs/iperf-server.log"
   sudo bash -c "iperf -s -i 10 &> $iperf_server_log"
else
  # If this is the client start the script for transfers
  # Wait 60 seconds just to give some time to the server to come up
  sleep 60
  ./scripts/client-wget.sh&
  ./scripts/client-iperf.sh&
fi
# Start my service -- assume it was installed at /usr/local/bin

