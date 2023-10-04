# FABRIC Interaction and Resources

## Section 1: Get Started

1. **[Signing up for a FABRIC account](https://github.com/fabric-testbed/teaching-materials/blob/main/Signing%20up.md#signing-up-for-a-fabric-account)** 
   - Navigate to the FABRIC portal at [https://portal.fabric-testbed.net/](https://portal.fabric-testbed.net/).
   - *Make sure you accept the cookie policy. Skipping the cookie policy will prevent you from enrolling.*
   - Then click the “Sign up” button in the upper right corner of the browser window. This will take you to the FABRIC Sign Up workflow. Currently, FABRIC requires that you use your institutional login to login to FABRIC using a system called CI Logon.
   - The next step is to authenticate using CILogon. This step requires logging in with your institutional ID and password.
   - After successfully logging in with CILogon, you will be taken to the self-sign up workflow.
   - The system will send you an email asking for you to verify your email address. Click the link in your email. 
   - After receiving the FABRIC approval email, you can access FABRIC. Please return to the FABRIC portal and login. Login with your institutional ID and password.
   - For detailed instruction: [https://github.com/fabric-testbed/teaching-materials/blob/main/Signing%20up.md#signing-up-for-a-fabric-account](https://github.com/fabric-testbed/teaching-materials/blob/main/Signing%20up.md#signing-up-for-a-fabric-account)

2. **[Creating or Joining a Project](https://github.com/fabric-testbed/teaching-materials/blob/main/Creating%20Project.md#creating-or-joining-a-project)** 
   - Creating a Project:
     Only users that have been granted the role of a Project Lead can create new projects and add members into them. When creating a new project, it is important to think through its purpose and its membership as FABRIC permissions are granted on a per-project basis. Also, it is important to fill out a description for the project as those are public by default (searchable by other FABRIC users). You can select your project not to be public using checkmarks in the project ‘Basic Information’ tab.
   - Joining a Project:
     Before you can use the testbed, you must join an active project. A project owner must add you to a project.
     A Project Lead or a Project Owner can add new Owners and Members by first navigating to the project via Experiments/Projects & Slices or User Profile/My Roles & Projects. Using the search box, you can find the user you want to add (minimum 4 consecutive letters of email or name are required for search) and click ‘Add’ next to their name.
   - For detailed instruction: [https://github.com/fabric-testbed/teaching-materials/blob/main/Creating%20Project.md#creating-or-joining-a-project](https://github.com/fabric-testbed/teaching-materials/blob/main/Creating%20Project.md#creating-or-joining-a-project)

3. **[Generating SSH Keys](https://github.com/fabric-testbed/teaching-materials/blob/main/Generating%20SSH%20Keys%20on%20Fabric%20Portal.md#approach-1--guide-to-generating-ssh-keys-on-fabric-portal)** 
   - **Generate the ssh keys** -> There are three ways to generate ssh keys:-
        1. [Generating SSH Keys on Fabric Portal](https://github.com/fabric-testbed/teaching-materials/blob/main/Generating%20SSH%20Keys%20on%20Fabric%20Portal.md#approach-1--guide-to-generating-ssh-keys-on-fabric-portal) *(Recommended)*
        2. [Generating SSH Keys on PowerShell](https://github.com/fabric-testbed/teaching-materials/blob/main/Generating%20SSH%20Keys%20on%20PowerShell.md#approach-2--generating-ssh-keys-on-powershell-windows)
        3. [Generating SSH Keys on Linux](https://github.com/fabric-testbed/teaching-materials/blob/main/Generating%20SSH%20Keys%20on%20Linux.md#approach-3--generating-ssh-keys-on-linux)

4. **[Logging in to Jupyter Hub](https://github.com/fabric-testbed/teaching-materials/blob/main/Logging%20in%20to%20Jupyter%20Hub.md#logging-in-to-jupyter-hub)** 
   - The easiest way to create experiments on FABRIC is using JupyterHub. You can create your private JupyterHub environment by logging into the FABRIC portal and clicking Links->JupyterHub
   - Login with your institutional ID and password. When you log in for the first time, a private JupyterHub environment will be built for you.
   - Your JupyterHub environment is a private container that includes a file system where you can store your FABRIC experiment notebooks. By default, FABRIC includes a set of example notebooks that demonstrate the use of the FABRIC Python API.
   - For detailed instruction: [https://github.com/fabric-testbed/teaching-materials/blob/main/Logging%20in%20to%20Jupyter%20Hub.md#logging-in-to-jupyter-hub](https://github.com/fabric-testbed/teaching-materials/blob/main/Logging%20in%20to%20Jupyter%20Hub.md#logging-in-to-jupyter-hub)

5. **[Upload ssh keys and setup config file](https://github.com/fabric-testbed/teaching-materials/blob/main/Upload%20the%20keys.md#upload-your-private-key-to-the-fabric-config-directory-in-fabric-jupyterlab)**
   - After logging into the Jupyter Hub.
     
   - **[Upload the keys](https://github.com/fabric-testbed/teaching-materials/blob/main/Upload%20the%20keys.md#upload-your-private-key-to-the-fabric-config-directory-in-fabric-jupyterlab)**
     
   - **[Setup the ssh config file](https://github.com/fabric-testbed/teaching-materials/blob/main/SSH%20Config%20File.md#creating-an-ssh-client-configuration-file)**
     

6. **[First experiment in Jupyter Hub](https://github.com/fabric-testbed/teaching-materials/blob/main/First%20Experiment%20in%20Jupyter%20Hub.md#first-experiment-in-jupyter-hub)** 
   - The easiest way to create experiments on FABRIC is using JupyterHub. You can create your private JupyterHub environment by logging into the FABRIC portal and clicking Links->JupyterHub
   - Login with your institutional ID and password. When you log in for the first time, a private JupyterHub environment will be built for you.
   - Your JupyterHub environment is a private container that includes a file system where you can store your FABRIC experiment notebooks. By default, FABRIC includes a set of example notebooks that demonstrate the use of the FABRIC Python API.
   - For detailed instruction: [https://github.com/fabric-testbed/teaching-materials/blob/main/First%20Experiment%20in%20Jupyter%20Hub.md#first-experiment-in-jupyter-hub](https://github.com/fabric-testbed/teaching-materials/blob/main/First%20Experiment%20in%20Jupyter%20Hub.md#first-experiment-in-jupyter-hub)
  
7. **[Accessing VMs Using SSH](https://github.com/fabric-testbed/teaching-materials/blob/main/Logging%20into%20FABRIC%20VMs.md#logging-into-fabric-vms)**
   - To log into the VM slivers within your FABRIC slice, you need to utilize a bastion host or 'hop node'. This is a security measure to provide controlled access.
   - Use the SSH config file to simplify access. For example, when using the "Hello FABRIC" notebook, follow these steps:
         a. Copy management IP from your node.
         b. Open SSH terminal.
         c. Enter: ssh -i /path/to/slice/private/key -F /path/to/SSH/config user@management_ip.
         d. Replace placeholders with actual paths and IP.
   - For detailed instruction: [https://github.com/fabric-testbed/teaching-materials/blob/main/Logging%20into%20FABRIC%20VMs.md#logging-into-fabric-vms](https://github.com/fabric-testbed/teaching-materials/blob/main/Logging%20into%20FABRIC%20VMs.md#logging-into-fabric-vms)

*For more information click here: [FABRIC Knowledge-Base](https://learn.fabric-testbed.net)*

## Section 2: List of Assignments

| Title | Description |
| --- | --- |
| FABRIC supported assignments| --- |
| [Exploring IPV6](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Exploring%20IPV6) | This module gives students an opportunity to experiment with IPv6 and examine the differences between it and IPv4. |
| [Exploring Queues](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Exploring%20Queues) | This module explores the effects of queues on packet loss and delay using UDP traffic. |
| [IPV4 routing](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/IPV4%20routing) | In this module, you will learn how to set up static routing with the route command. |
| [OSPF](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/OSPF) | This module explores the OSPF routing protocol and how it dynamically routes around downed links. |
| [Ping](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Ping) | Assignment details for the Ping module. |
| [RTT and Window Size on TCP](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/RTT%20and%20Window%20Size%20on%20TCP) | This module allows students to experiment with how RTT and TCP window size affect TCP throughput. |
| [TCP Traffic](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/TCP%20Traffic) | This module gives students experience generating and analyzing TCP flows. |
| [Traffic Analysis](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Traffic%20Analysis) | This module introduces some key tools for network traffic analysis. |
| [TrafficGeneration](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/TrafficGeneration) | This module introduces students to the principles of traffic generation using Tmix, a tool for generating realistic network traffic from captured packet headers. |
| [Webserver](https://github.com/fabric-testbed/teaching-materials/tree/main/assignments/Webserver) | This module gives students hands-on experience installing and interacting with a web server. |
| Link to other assignments | [https://teaching-on-testbeds.github.io](https://teaching-on-testbeds.github.io) |

## Section 3: Other Useful Information

### 3.1 FABRIC has three ways of interacting with it:

1. Portal:
   - Manage projects
   - SSH keys
   - API tokens
   - Create or visualize slice topologies

2. Jupyter Hub:
   - Create Notebooks
   - Create Virtual Environment
   - Run experiments
   - Favourable Kernel options
   - *We strongly recommend starting your FABRIC experiments with Jupyter Notebooks*

3. Use FABRIC APIs:
   - Run from experimenter laptop or desktop
   - Libraries are available for download from PyPi

*For more details click here: [Knowledge-Base](https://learn.fabric-testbed.net/article-categories/getting-started/)*


### 3.2 The types of resources FABRIC offers are:

1. FPGA
2. Disk (GB)
3. Support for P4 switches
4. RAM (GB)
5. GPU
6. NVME
7. Cores
8. SmartNIC
9. SharedNIC

*For detailed Testbed Resource Summary click here: [Resources](https://portal.fabric-testbed.net/resources/all)*


### 3.3 Resources are Mapped into VMs:

1. FABRIC provides Virtual machines of different sizes (up to 64 cores, 384G RAM) with directly attached PCI devices.
2. VMs can be placed at the sites of your choice and interconnected by a rich set of on-demand Layer 2 and Layer 3 network services.
3. VMs are arranged in network topologies.
4. VMs can have large storage volumes attached to them.
5. VMs or slivers are arranged in slices representing individual experiment topologies. Slices can be created, modified, and deleted.
   - Slices have a finite lifetime, but can typically be extended before they expire.
6. FABRIC Slices can connect to other testbeds or facilities using Facility Ports.


### 3.4 Server Options

In this section, you can find various server options available in FABRIC along with their corresponding versions and release information. Whenever you login to the Jupyter Hub you'll have the option to select the version best suited for you.

- FABRIC Examples v1.4.6, FABlib v1.4.6: released: 06/15/2023, stable: Summer 2023
- (default) FABRIC Examples v1.5.1, FABlib v1.5.1: released: 06/17/2023, stable: Fall 2023
- (bleeding edge) FABRIC Examples latest, FABlib latest, Current Release
- (beyond bleeding edge) FABRIC Examples (main branch), FABlib (master branch)


### 3.5 Slice States

There are 6 types of states for a slice.
| State       | Introduction                                                                                     |
| ----------- | ----------------------------------------------------------------------------------------------- |
| Nascent     | Indicates a new slice which has just been created.                                              |
| Configuring | Indicates a slice which has slivers being ticketing/ticketed at the Broker or redeeming at the Site. |
| StableOK    | Indicates a slice which has slivers either in Active or Closed state.                            |
| StableError | Indicates a slice which has slivers either in Active, Closed, or Failed state.                   |
| ModifyOK    | Indicates a slice which was modified successfully and has slivers in Active or Closed state.     |
| ModifyError | Indicates a slice which was modified partially successfully and has slivers in Active, Closed, or Failed state. |

