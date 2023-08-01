# FABRIC Educational Materials

## Website:
  To learn about the latest news, changes or if you encounter problems,
  questions, or suggestions, please navigate to the FABRIC Knowledge Base
  at https://learn.fabric-testbed.net/

## Running the Tutorial
- The Average tutorial has three Jupyter notebook:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **x.ipynb**: Configures the node and starts the x tutorial
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
    	- In the left-hand column of JupyterHub, navigate to the x tutorial
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the x.ipynb
        - Then open and execute the Assignment.ipynb
## Available Assignments
 - Exploring IPv6:
   + The goal of this tutorial is to learn about IPv6 and to experiment with the IPv6 protocol and examine differences between IPv6 and IPv4.
 - Exploring Queues:
   + The goal of this tutorial is to understand how queues function in networking and to experiment how queues react with restrictions.
 - Routing with IPv4:
   + The goal of this exercise is to understand how routing works in a network
 - OSPF:
   + The goal of this tutorial is to understand how OSPF works and to allow the user to experiment with the protocol first hand on how it can be used in a network
 - Ping Layer
   + The goal of this exercise is to understand how the ping layer works in a network and an introduction of the ping command in linux along with iperf
 - Round Trip Time and Window Size effect on TCP 
   + The goal of the this tutorial is is to understand how delay and the size of a window can affect data loss.
 - TCP Traffic
   + The Goal of this exercise is to show students how to generate traffic using iperf in a saw tooth behavior and the link it shares. Furthermore it will explain differences in UDP & TCP and how they interact with each other when they run simultaneously.
 - Traffic Analysis
   + The goal of this exercise is to give user hands-on experience using networking tools such as: ping, tcpdump, and ifconfig.
 - Traffic Generation
   + The goal of this exercise is to introduce the user to traffic generation using Nping
 - Webserver
   + The goal of this exercise is to give user hands-on experience installing and interacting with a web server. User will install and start a web server, generate a simple HTML file, and use a client node to retrieve the file.

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://www.cs.unc.edu/Research/geni/geniEdu/09-queues.html>), but has been converted to run in FABRIC.