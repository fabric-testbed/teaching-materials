# Creating an SSH Client Configuration File

To use the FABRIC bastion host, you must create an SSH configuration file, regardless of whether you are working from Jupyter Hub or your own laptop/desktop.

### For Jupyter Hub 

> **Note**: If you are using the Fabric Portal, to generate the bastion keys, the Configure Environment notebook will be created for you.

## Setting up FABRIC Environment: Configure Environment Notebook

In this guide, you will learn about the "Configure Environment" notebook, which sets up important environment variables and an SSH configuration file in your operating system. These configurations allow FABRIC to run smoothly in the FABRIC API examples. This notebook is located under the "FABRIC Environment Setup" section.

![Image Alt Text](https://transfer.sh/8lUeEhLIPs/Screenshot%202023-08-20%20at%202.25.20%20PM.png)

## Set Bastion Username and Project ID

In the first cell of the notebook, set the following variables:

- `FABRIC_BASTION_USERNAME`: Your FABRIC bastion username (found in the "Experiments" tab under SSH keys).
- `FABRIC_PROJECT_ID`: Your FABRIC project ID (found in the "Projects" tab).

Enclose both the username and project ID in apostrophes.

## Set Tokens and Keys

The next set of cells establishes the location of your tokens file and your slice private key. These keys enable you to use the FABRIC API and SSH into your FABRIC slices.

- `FABRIC_TOKEN_FILE`: Location of your tokens file.
- `FABRIC_SLICE_PRIVATE_KEY_FILE`: Location of your slice private key.

## Set Permissions

Run the cell that sets permissions on your bastion and slice key files. This ensures secure access to your nodes through the bastion host.

## Create FABRIC RC and SSH Config Files

Run the cells that create the FABRIC RC and SSH config files. These files contain important configuration values. Note that the fabric log file location is where FABRIC will send output if an error occurs during a run.

The fabric RC file will be created in the specified location.

## Create SSH Config File

Run the cell that creates the SSH config file. This file isn't used internally by FABRIC but is useful for SSHing into your nodes directly. After any modifications, run the cell to create the config file.


### For Linux and Powershell (Manual Approach)

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





