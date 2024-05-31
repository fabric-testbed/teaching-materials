# FABRIC Educational Materials
# Tutorial: OpenFlow With Controller (Ryu)
## Introduction
  The goal of this exercise is to introduce the user to the beneffits of switches in networks

## Running the Tutorial
- The tutorial has three Jupyter notebooks and one folder:
    - **CreateSlice.ipynb**: Creates the FABRIC slice/topology needed for this tutorial
    - **OpenVS_Ryu.ipynb**: Configures the IPv4/IPv6 network address and then begins the Queues tutorial
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
- In this notebook you will request a slice that contains 5 nodes (Host1, Host2, Host3, Bridge and a Controller node) and four Layer-2 networks (LANs) with the following configurations:
```
			Controller
			   | 
		 ControllerLan
			   |
      ---   Bridge   ---
	  |		   | 		|	 
    H1LAN    H2LAN    H3LAN
      |        |      	 |
  	Host1    Host2  Host3
```
- Each node should have the following requirements:
	- NIC_Basic model
	- "default_ubuntu_20" image
	- 1 cores
	- 2 ram
	- 10 disk space
 - To successfully run this notebook you should only need to run the code blocks in order from top to bottom
 - **Notes:** If your slice creation fails you can just try to specify a site in the second code block run them again. (you can get a site from "https://portal.fabric-testbed.net/" by looking at the map, use the name **outside** of the parenthesis and make sure the site chosen is up)

### Exploring Ansible Notebook
- To successfully run this notebook you need to run the code blocks first (*Retrieve Slice*) and then follow the steps in (*Guided Experiment*):
    - Retrieve Slice: This step is not required but it will allow you to easily access the nodes in the slice you will use for the experiment.
	- Guided Experiment: This is the Experiment, To complete this section just follow the provided instructions to complete the exercise.

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://groups.geni.net/geni/wiki/GENIEducation/SampleAssignments/IPRouting/Procedure>), but has beeen converted to run in FABRIC.