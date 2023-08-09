# FABRIC Educational Materials
# Tutorial: TCP Traffic
## Introduction
The Goal of this exercise is to show students how to generate traffic using iperf in a saw tooth behavior and the link it shares. Furthermore it will explain differences in UDP & TCP and how they interact with each other when they run simultaneously.
## Running the Tutorial
- The tutorial has three Jupyter notebooks and one folder:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **TCP_Traffic.ipynb**: Configures the IPv4/IPv6 network address, installs tools needed and then begins the TCP tutorial
    - **Assignment.ipynb**: Contains questions/tasks to be answered
- To run the tutorial:
   - Login to the FABRIC Portal and JupyterHub
    	- Login to the [FABRIC Portal](https://portal.fabric-testbed.net/)
    	- Login/connect to the [FABRIC JupyterHub](https://learn.fabric-testbed.net/knowledge-base/creating-your-first-experiment-in-jupyter-hub/)
   - Download the latest copy of the tutorials from GitHub
    	- Open a terminal in JupyterHub by clicking the "Terminal" tile under "Other" in the Launcher tab
    	- In the terminal window, type the following commands to download (pull) the latest version of the set of tutorials from Github
```
        	mkdir teaching-materials
        	cd teaching-materials
        	git clone https://github.com/fabric-testbed/teaching-materials.git
```

   - Run the Tutorial Notebooks
    	- In the left-hand column of JupyterHub, navigate to the TCP Traffic tutorial
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the TCP_Traffic.ipynb
        - Then open and execute the Assignment.ipynb

## Overview of the Notebooks in this Tutorial

### Create Slice Notebook
- In this notebook you will request a slice that contains two nodes (Client and Server) and one Layer-2 networks (LAN) with the following configurations:
```
        	Client <-> LAN 1 <-> Server
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 2 cores
	- 4 ram
	- 100 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### TCP Traffic Notebook
- To successfully run this notebook you need to run the code blocks first (*Setup Experiment*) and then run the experiment (*Run Experiment*):
	- Setup Experiment: This is the setup, run the provided Codeblocks to setup the network and to provide the correct addresses to each node.
    - Run Experiment: This is the Experiment, To complete this section just follow the provided instructions to understand the 2 sections: Iperf in One Direction and TCP vs UDP.
- **Notes:**
   + if you run out of memory during the assignment be sure to re-try the assignment increasing the disk space by 50 - 100, if the problem persist lower the time the ss program is running.
   + Do not run iperf with the graphing script for more than 2 minutes to avoid memory errors
### Assignment Notebook
- In this Assignment you will experiment with inputs to the commands to test the capabilities of the nodes transfer rate.
- **Notes:** In the case the slice fails to delete please examine the experiment tab on the fabric portal and delete the corresponding slice if it was not already deleted

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://www.cs.unc.edu/Research/geni/geniEdu/03-TcpTraffic.html> and <https://www.cs.unc.edu/Research/geni/geniEdu/07-TCPvsUDP.html>), but has been converted to run in FABRIC.
