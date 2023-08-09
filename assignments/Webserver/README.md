# FABRIC Educational Materials
# Tutorial: Webserver
## Introduction
The goal of this exercise is to give user hands-on experience installing and interacting with a web server. User will install and start a web server, generate a simple HTML file, and use a client node to retrieve the file.
 
## Running the Tutorial
- The tutorial has three Jupyter notebook:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **webserver.ipynb**: Configures the IPv4/IPv6 network address, installs tools needed and then begins the webserver tutorial
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
    	- In the left-hand column of JupyterHub, navigate to the Webserver tutorial
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the webserver.ipynb
        - Then open and execute the Assignment.ipynb

## Overview of the Notebooks in this Tutorial

### Create Slice Notebook
- In this notebook you will request a slice that contains three nodes (ND1, server, and ND2) and two Layer-2 networks (LAN) with the following configuration:
```
        	ND1 <-> LAN 1 <-> server <-> LAN 2 <-> ND2
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 2 cores
	- 8 ram
	- 100 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Webserver Notebook
- To successfully run this notebook you need to run the code blocks first (*Setup Experiment*) and then run the experiment (*Run Experiment*):
	- Setup Experiment: This is the setup, run the provided Codeblocks to setup the network and to provide the correct addresses to each node.
    - Run Experiment: This is the Experiment, To complete this section just follow the provided instructions to start and stop the server, use the wget command to get the page, and to start a different server using commands.
### Assignment Notebook
- In this Assignment you will answer questions and use what you learned to send codes to the server to see if you can get a responce out of the server. Lastly you will delete the slice to clear resources you used.
- **Notes:** In the case the slice fails to delete please examine the experiment tab on the fabric portal and delete the corresponding slice if it was not already deleted

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://groups.geni.net/geni/wiki/WebServerExample>), but has been converted to run in FABRIC.
