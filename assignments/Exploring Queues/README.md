# FABRIC Educational Materials
# Tutorial: Exploring Queues
## Introduction
The goal of this tutorial is to understand how queues function in networking and to experiment how queues react with restrictions.

## Running the Tutorial
- The tutorial has three Jupyter notebooks and one folder:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial including node specific configuration
    - **ExploringQueues.ipynb**: Configures the IPv4/IPv6 network address and then begins the Queues Assignment
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
    	- In the left-hand column of JupyterHub, navigate to the Exploring Exploring Queues tutorial
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the steps on ExploringQueues.ipynb

## Overview of the Notebooks in this Tutorial

### Create Slice Notebook
- In this notebook you will request a slice that contains three nodes (Source, Destination, and a Router) and two Layer-2 networks (LANs) with the following configurations:
```
        	Source <-> LAN 1 <-> Router <-> LAN 2 <-> Destination
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 1 cores
	- 2 ram
	- 10 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Exploring Queues Notebook
- To successfully run this notebook you need to run the code blocks first (*Setup Experiment*) and then run the experiment (*Run Experiment*):
	- Guided Experiment: This is the Experiment, To complete this section just follow the provided instructions to understand the 5 sections: Messuring Loss and Delay, Throttling the router and Finite Queue, Smaller Queue and Even Smaller Queue.
    - In this Assignment you will make inferences based on the figures and then answer some questions, then you will re-try the experiment to see if your inferences were correct. Lastly you will delete the slice to clear resources you used.
    - **Notes:** In the case the slice fails to delete please examine the experiment tab on the fabric portal and delete the corresponding slice if it was not already deleted
 
## Additional Information
- FABRIC Learn Website: If you encounter problems, questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://www.cs.unc.edu/Research/geni/geniEdu/09-queues.html>), but has beeen converted to run in FABRIC.
