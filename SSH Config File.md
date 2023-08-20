# Creating an SSH Client Configuration File

To use the FABRIC bastion host, you must create an SSH configuration file, regardless of whether you are working from Jupyter Hub or your own laptop/desktop.



### For Jupyter Hub (Manual Approach)

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
     ProxyJump <FABRIC_BASTION_USERNAME>@bastion.fabric-testbed.net:22```

- Replace `<FABRIC_BASTION_USERNAME>` with your FABRIC bastion username.
- Replace `<FABRIC_BASTION_PRIVATE_KEY_LOCATION>` with the path to your private key file (e.g., /path/to/your/private_key.pem).

 3. **Save and Exit the SSH Config File:**
	- Save the changes you made to the SSH config file and exit the text editor.

Now, you have your SSH keys generated, and the SSH config file set up on your local desktop. You are ready to securely access FABRIC resources using SSH. Remember to keep your private key safe and avoid sharing it. Enjoy exploring the FABRIC testbed and conducting experiments with ease!





