# Generating SSH Keys for FABRIC

SSH keys are essential for securely accessing FABRIC resources. This guide will walk you through the process of generating SSH keys and setting up the SSH config file on your local desktop for easier access.

## Section 1: Step-by-Step Guide: Generating SSH Keys for FABRIC

1. **Access the FABRIC Portal**
   - Open your web browser and go to the FABRIC portal at [https://portal.fabric-testbed.net/](https://portal.fabric-testbed.net/).

2. **Create a FABRIC Account**
   - If you don't have a FABRIC account yet, click on the "Sign up" button in the upper right corner of the portal.
   - Follow the instructions to sign up using your institutional login (CI Logon).

3. **Log in to the FABRIC Portal**
   - Once you have created an account, click the "Log in" button in the upper right corner of the portal.
   - Enter your institutional credentials to log in to the FABRIC portal.

4. **Navigate to SSH Keys**
   - After logging in, click on your profile picture (or username) in the upper right corner.
   - Select "SSH Keys" from the dropdown menu.

5. **Generate SSH Key Pair**
   - In the SSH Keys section, click on the "Generate SSH Key Pair" button.

6. **Set a Name**
   - Enter a descriptive name for your SSH key (e.g., "My FABRIC SSH Key").

7. **Optional: Choose Key Type and Size**
   - By default, RSA key type with 2048 bits is selected, and it is recommended to keep the default settings. If you wish to change the key type or size, you can do so from the dropdown menus.

8. **Click on "Generate"**
   - Click the "Generate" button to create your SSH key pair.

9. **Save the Private Key**
   - After the key pair is generated, the private key file will be automatically downloaded to your computer. Save this file to a secure location (e.g., your computer's Downloads folder).

10. **Copy the Public Key**
    - The public key will be displayed on the portal. Copy the entire content of the public key (starts with "ssh-rsa") to your clipboard.

11. **Add Public Key to FABRIC**
    - Go back to the FABRIC portal and navigate to the SSH Keys section (if not already there).
    - Click on the "Add Public Key" button.

12. **Paste Public Key**
    - In the "Add Public Key" dialog box, paste the public key that you copied in Step 10.

13. **Save Public Key**
    - Click the "Save" button to add your public key to the FABRIC portal.

You have successfully generated your SSH key pair and added the public key to the FABRIC portal. Now, you can use the private key to access FABRIC resources securely. Make sure to keep the private key safe and do not share it with anyone. 


## Section 2: Using the SSH Config File:

1. **Open or Create SSH Config File:**
   - Open your terminal or command prompt on your local desktop.
   - Navigate to your home directory by entering `cd ~` in the terminal.
   - Check if you already have an SSH config file by running `ls -a ~/.ssh`. If the file does not exist, create it by running `touch ~/.ssh/config`.

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


## Section 3: Important Details to Keep in Mind while Generating SSH Keys for FABRIC:

1. **Key Generation Location:**
   - SSH keys can be generated either on the FABRIC portal or on your local desktop.
   - It is generally preferred to generate the keys on your local desktop to maintain better control over your private key.

2. **Local Key Generation Benefits:**
   - When generating keys on your local desktop, you have control over the key pair's security and access.
   - The private key will be stored locally on your computer, reducing the risk of unauthorized access.

3. **Recommended Key Type and Size:**
   - The default key type is RSA with a key size of 2048 bits, which is recommended for most users.
   - Changing the key type or size is not necessary unless you have specific requirements.

4. **Secure Private Key Storage:**
   - After generating the key pair, ensure that you save the private key file (.pem) in a secure location on your local desktop.
   - Do not share the private key with others, as it grants access to your FABRIC resources.

5. **Use of Public Key:**
   - The public key is used to authenticate your access to FABRIC resources.
   - You will add the public key to your FABRIC account through the portal.

6. **SSH Config File (.ssh/config):**
   - After generating the keys, you need to create or update your SSH config file on your local desktop.
   - The SSH config file allows you to set up configurations for different hosts, including FABRIC's bastion host.

## Important: Keep Your Private Key Safe

**It is crucial to keep your private key secure and avoid sharing it with others. Your private key acts as the authentication token to access FABRIC resources, and if it falls into the wrong hands, unauthorized access to your account and resources can occur. Store the private key in a secure location, and never share it through insecure channels or untrusted sources.**



