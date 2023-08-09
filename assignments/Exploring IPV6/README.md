# FABRIC Educational Materials
# Tutorial: Exploring IPv6

## Introduction
The goal of this tutorial is to learn about IPv6 and to experiment with the IPv6 protocol and examine differences between IPv6 and IPv4.

## Running the Tutorial
- The tutorial has three Jupyter notebooks:
	- **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
	- **ExploringIPV6.ipynb**: Configures the IPv4/IPv6 network address and then begins the IPv6 tutorial
	- **Assignment.ipynb**: Contains questions/tasks to be answered
- To run the tutorial:
	- Login to the FABRIC Portal and JupyterHub
    	- Login to the [FABRIC Portal](https://portal.fabric-testbed.net/)
    	- Login/connect to the [FABRIC JupyterHub](https://learn.fabric-testbed.net/knowledge-base/creating-your-first-experiment-in-jupyter-hub/)
	- Download the latest copy of the tutorials from GitHub
    	- Open a terminal in JupyterHub by clicking the "Terminal" tile under "Other" in the Launcher tab
    	- In the terminal window, type the following commands to download (pull) the latest version of the set of tutorials from Github

        	    mkdir teaching-materials
        	    cd teaching-materials
        	    git clone https://github.com/fabric-testbed/teaching-materials.git


	- Run the Tutorial Notebooks
    	- In the left-hand column of JupyterHub, navigate to the Exploring IPv6 tutorial
    	- Open and execute the CreateSlice.ipynb notebook
   	 - Then open and execute the ExploringIPV6.ipynb
   	 - Then open and execute the Assignment.ipynb
 
## Overview of the Notebooks in this Tutorial

### Create Slice Notebook
- In this notebook you will request a slice that contains three nodes (Host 1, Host2, and a Router) and two Layer-2 networks (LANs) with the following configurations:
```
        	Host 1 <-> LAN 1 <-> Router <-> LAN 2 <-> Host 2
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 1 cores
	- 4 ram
	- 100 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Exploring IPV6 Notebook
- To successfully run this notebook you need to run the code blocks first (*Setup Experiment*) and then run the experiment (*Run Experiment*):
	- Setup Experiment: This is the setup, run the provided Codeblocks to setup the network and to provide the correct addresses to each node.
    - Run Experiment: This is the Experiment, To complete this section just follow the provided instructions to understand the 3 sections: Basic Connection, Header Comparison and Global Address.
 
### Assignment Notebook
- In this Assignment you will analyze the headers once again and then delete the slice after answering the questions to clean the resources used.
- **Notes:** In the case the slice fails to delete please examine the experiment tab on the fabric portal and delete the corresponding slice if it was not already deleted

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<http://www.cs.unc.edu/Research/geni/geniEdu/10-IPv6.html>), but has beeen converted to run in FABRIC.
