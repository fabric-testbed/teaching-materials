# Creating an SSH Client Configuration File

To use the FABRIC bastion host, you must create an SSH configuration file, regardless of whether you are working from Jupyter Hub or your own laptop/desktop.

## For Jupyter Hub 

> **Note**: If you are using the Fabric Portal, to generate the bastion keys, the Configure Environment notebook will be created for you.

### Setting up FABRIC Environment: Configure Environment Notebook

In this guide, you will learn about the "Configure and Validate" notebook, which sets up important environment variables and an SSH configuration file in your operating system. These configurations allow FABRIC to run smoothly in the FABRIC API examples. This notebook is located under the "Configure and Validate" folder in jupyter-examples. You can also navigate to it from the "Getting Started" section in start_here.ipynb notebook from jupyter-examples. 

![Image Alt Text](https://github.com/fabric-testbed/teaching-materials/blob/master/Aditional%20Resources/Figures/Fabric_Configure_Notebook.png?raw=true)
 
In the first cell of the notebook, 
```
# Update this line to specify your project id
project_id = "REPLACE_WITH_YOUR_PROJECT_ID"

# Uncomment the line below if using 'FABRIC Tutorials' Project
#project_id="a7818636-1fa1-4e77-bb03-d171598b0862"

fablib = fablib_manager(project_id=project_id)
```
set the following variables:

- `project_id`: Your FABRIC project ID (found in the "Projects" tab).

Enclose the project ID in apostrophes.

This will take care of creating your Bastion key pair, ssh configuration file, sliver keys and fabric_rc notebook. 


> **Important Note:** If you have already utilized the FABRIC portal to set up the environment using the "Configure Environment" option, you can skip the manual steps outlined below. The following instructions are relevant when generating SSH keys using Linux or PowerShell.

**Please proceed with the manual approach only if the portal setup was not utilized.**




## For Linux and Powershell (Manual Approach)

1. **Open or Create SSH Config File:**
   - Open your terminal or command prompt on your local desktop.
   - Navigate to your home directory by entering `cd ~` in the terminal.
   - Check if you already have an SSH config file by running `ls -a ~/.ssh`. If the file does not exist, create it by running `touch ~/.ssh/config`.
   - If you're using Jupyter Hub and creating the configuration manually, save the configuration files and key files under `~/work/fabric_config/ssh_config` so they persist between sessions. If you're working from your own laptop/desktop, you can save them, for instance, as `~/.ssh/fabric_ssh_config`.

> **Note**: Avoid using the default name `~/.ssh/config` as it might affect your ssh logins to any host, not just FABRIC VMs.

2. **Create the SSH configuration file with the following content:**

```plaintext
UserKnownHostsFile /dev/null
StrictHostKeyChecking no
ServerAliveInterval 120 

Host bastion.fabric-testbed.net
     User <FABRIC_BASTION_USERNAME>
     ForwardAgent yes
     Hostname %h
     IdentityFile <FABRIC_BASTION_PRIVATE_KEY_LOCATION>
     IdentitiesOnly yes

Host * !bastion.fabric-testbed.net
     ProxyJump <FABRIC_BASTION_USERNAME>@bastion.fabric-testbed.net:22
 ```

- Replace `<FABRIC_BASTION_USERNAME>` with your FABRIC bastion username.
- Replace `<FABRIC_BASTION_PRIVATE_KEY_LOCATION>` with the path to your private key file (e.g., /path/to/your/private_key.pem).

 3. **Save and Exit the SSH Config File:**
	- Save the changes you made to the SSH config file and exit the text editor.

Now, you have your SSH keys generated, and the SSH config file set up on your local desktop. You are ready to securely access FABRIC resources using SSH. Remember to keep your private key safe and avoid sharing it. Enjoy exploring the FABRIC testbed and conducting experiments with ease!





