## Section : Using the SSH Config File:

1. **Open or Create SSH Config File:**
   - Open your terminal or command prompt on your local desktop.
   - Navigate to your home directory by entering `cd ~` in the terminal.
   - Check if you already have an SSH config file by running `ls -a ~/.ssh`. If the file does not exist, create it by running `touch ~/.ssh/config`.

     ![ssh config](https://transfer.sh/FCgt33kcLq/Screenshot%202023-08-09%20at%202.52.14%20AM.png)

2. **Edit the SSH Config File:**
   - Use a text editor (such as nano, vi, or any text editor of your choice) to open the SSH config file. For example, `nano ~/.ssh/config`.
   - Add the following configuration for FABRIC's bastion host:
     
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
