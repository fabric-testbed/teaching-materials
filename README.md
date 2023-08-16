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
 There are 10 Tutorials that focus on teaching the user about network traffic, these include:
 
	- Queue instructure
	- Routing Experimentation
	- Throughput Analysis
	- Webserver Management
 A list of each assignment with summary of the related content can be found in the [assignments](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments) directory

## Additional Information
- FABRIC Learn Website: If you encounter problems,questions, or suggestions, please navigate to the FABRIC Knowledge Base at https://learn.fabric-testbed.net/
- FABRIC Teaching Material Github: <https://github.com/fabric-testbed/teaching-materials>
- This assignment was originally written for the GENI network (<https://www.cs.unc.edu/Research/geni/geniEdu/09-queues.html>), but has been converted to run in FABRIC.
