# FABRIC Educational Materials

## Getting Started
To be able to run the following experiments you will need a fabric account and access to the fabric portal, For instructions on how to run these steps and additional useful information please see [Getting Started](https://github.com/fabric-testbed/teaching-materials/blob/main/Getting%20Started.md)

## Running the Tutorial
- The Average tutorial has three Jupyter notebook:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **\<Tutorial_Name>.ipynb**: Configures the node and starts the \<Tutorial_Name> tutorial
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
    	- In the left-hand column of JupyterHub, navigate to the \<Tutorial_Name> directory
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the \<Tutorial_Name>.ipynb
        - Then open and execute the Assignment.ipynb
        
## Available Assignments
 - [Exploring IPv6](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Exploring%20IPV6):
   + The goal of this tutorial is to learn about IPv6 and to experiment with the IPv6 protocol and examine differences between IPv6 and IPv4.
 - [Exploring Queues](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Exploring%20Queues):
   + The goal of this tutorial is to understand how queues function in networking and to experiment how queues react with restrictions.
 - [Routing with IPv4](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/IPV4%20routing):
   + The goal of this exercise is to understand how routing works in a network
 - [OSPF](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/OSPF):
   + The goal of this tutorial is to understand how OSPF works and to allow the user to experiment with the protocol first hand on how it can be used in a network
 - [Ping Layer](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Ping.ipynb):
   + The goal of this exercise is to understand how the ping layer works in a network and an introduction of the ping command in linux along with iperf
 - [Round Trip Time and Window Size effect on TCP](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/RTT%20and%20Window%20Size%20on%20TCP) 
   + The goal of the this tutorial is is to understand how delay and the size of a window can affect data loss.
 - [TCP Traffic](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/TCP%20Traffic)
   + The Goal of this exercise is to show students how to generate traffic using iperf in a saw tooth behavior and the link it shares. Furthermore it will explain differences in UDP & TCP and how they interact with each other when they run simultaneously.
 - [Traffic Analysis](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Traffic%20Analysis) 
   + The goal of this exercise is to give user hands-on experience using networking tools such as: ping, tcpdump, and ifconfig.
 - [Traffic Generation](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/TrafficGeneration)
   + The goal of this exercise is to introduce the user to traffic generation using Nping
 - [Webserver](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Webserver)
   + The goal of this exercise is to give user hands-on experience installing and interacting with a web server. User will install and start a web server, generate a simple HTML file, and use a client node to retrieve the file.

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://www.cs.unc.edu/Research/geni/geniEdu/09-queues.html>), but has been converted to run in FABRIC.
