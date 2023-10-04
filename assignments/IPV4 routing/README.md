# FABRIC Educational Materials
# Tutorial: Routing with IPv4
## Introduction
  The goal of this exercise is to understand how routing works in a network

## Running the Tutorial
- The tutorial has three Jupyter notebooks and one folder:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **Routing_with_IPv4.ipynb**: Configures the IPv4/IPv6 network address and then begins the Queues tutorial
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
    	- In the left-hand column of JupyterHub, navigate to the Routing with IPv4 tutorial
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the Routing_with_IPv4.ipynb

### Create Slice Notebook
- In this notebook you will request a slice that contains three nodes (NDA, NDB, and a NDC) and three Layer-2 networks (LANs) with the following configurations:
```
             NDB
           /     \
     	LAN 1     LAN 1
    	/         	\
  	NDA <-> LAN 3 <-> NDC
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 1 cores
	- 2 ram
	- 10 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Routing with IPv4 Notebook
- To successfully run this notebook you need to run the code blocks first (*Setup Experiment*) and then run the experiment (*Run Assignment*):
	- Setup Experiment: This is the setup, run the provided Codeblocks to setup the network and to provide the correct addresses to each node.
    - Run Assignment: This is the Experiment, To complete this section just follow the provided instructions to complete the exercise.
- **Notes:**
    - There is a link to the linux route command for reference, feal free to take a look at it if you are stuck and remember that the routes must be made both ways
    - The last cell is to delete the slice and free resources, make sure you set "Check" to "True" to delete the slice
    - In the case the slice fails to delete please examine the experiment tab on the fabric portal and delete the corresponding slice if it was not already deleted

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://groups.geni.net/geni/wiki/GENIEducation/SampleAssignments/IPRouting/Procedure>), but has beeen converted to run in FABRIC.