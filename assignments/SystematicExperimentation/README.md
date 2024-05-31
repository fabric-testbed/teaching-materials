# FABRIC Educational Materials
# Tutorial: Systematic Experimentation (with Ansible)
## Introduction
  The goal of this exercise is to better understand how to use an ansible playbook

## Running the Tutorial
- The tutorial has three Jupyter notebooks and one folder:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **SystematicExperimentation.ipynb**: Configures the IPv4/IPv6 network address and then begins the Queues tutorial
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
    	- In the left-hand column of JupyterHub, navigate to the SystematicExperimentation folder
    	- Open and execute the CreateSlice.ipynb notebook
        - Then open and execute the SystematicExperimentation.ipynb

### Create Slice Notebook
- In this notebook you will request a slice that contains three nodes (Cl0, Cl1, Cl2, Sv1, Sv0, and a Ans) and three Layer-2 networks (LANs) with the following configurations:
```
    Ans                    Cl0
          \             /
    Sv0  <->  Lan-Net <-> Cl1
    	  /         	\
  	Sv1                   Cl2
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 1 cores
	- 2 ram
	- 10 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Systematic Experimentation Notebook
- To successfully run this notebook you need to run the code blocks first (*Retrieve Slice*) and then follow the steps in (*Guided Experiment*):
    - Retrieve Slice: This step is not required but it will allow you to easily access the nodes in the slice you will use for the experiment.
	- Guided Experiment: This is the Experiment, To complete this section just follow the provided instructions to complete the exercise.
- **Notes:**
	- Make sure you check your bash agent as it can lead to errors when adding a slice key
	- make sure you accept the fingerprint for each node when you are asked with 'Yes', if you don't do this step you might get stuck in an infinite loop

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://groups.geni.net/geni/wiki/GENIEducation/SampleAssignments/IPRouting/Procedure>), but has beeen converted to run in FABRIC.