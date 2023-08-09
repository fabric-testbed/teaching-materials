# FABRIC Educational Materials
# Tutorial: Ping Layer
## Introduction
  The goal of this exercise is to understand how the ping layer works in a network and an introduction of the ping command in linux along with iperf

## Running the Tutorial
- The tutorial has three Jupyter notebooks and one folder:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **ping.ipynb**: Configures the IPv4/IPv6 network address and then begins the Ping tutorial
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
    	- In the left-hand column of JupyterHub, navigate to the Ping tutorial
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the ping.ipynb

### Create Slice Notebook
- In this notebook you will request a slice that contains two nodes (client, and server) and one Layer-2 networks (LAN) with the following configurations:
```
  	client <-> LAN 1 <-> Server
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 1 cores
	- 4 ram
	- 100 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Ping Notebook
- To successfully run this notebook you need to run the code blocks first (*Setup Experiment*) and then run the experiment (*Execute Experiment*):
	- Setup Experiment: This is the setup, run the provided Codeblocks to setup the network and to provide the correct addresses to each node.
    - Execute Experiment: This is the Experiment, This contains two sub sections, ping & pingPlus. 
        - ping (*2.1* - *2.4*) focuses on the introductions of the linux command
        - pingPlus (*2.5* - *2.12*) is focused on teaching the user about how the command functions with a special program.
- **Notes:**
    - The last cell is to delete the slice and free resources, make sure you set "Check" to "True" to delete the slice
    - In the case the slice fails to delete please examine the experiment tab on the fabric portal and delete the corresponding slice if it was not already deleted

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://groups.geni.net/geni/wiki/Tutorials/Layer2Ping/Procedure> and <https://groups.geni.net/geni/wiki/GENIExperimenter/Tutorials/jacks/GettingStarted_PartI/Procedure>), but has beeen converted to run in FABRIC.
