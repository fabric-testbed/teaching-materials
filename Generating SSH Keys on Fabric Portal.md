## Section 1: Step-by-Step Guide: Generating SSH Keys for FABRIC

## Introduction

SSH (Secure Shell) keys are a secure and convenient way to authenticate yourself to remote servers, like the Fabric Portal. In order to minimize security incidents on FABRIC, access to VMs and other resources administered by users is controlled using a bastion host. You will need to set up an ssh keypair that will be used to jump through the bastion host to your VMs and other resources. This keypair is unique to you and is only used to set up ssh proxy connections through the bastion host to your FABRIC resources.

# Approach 1:- Guide to Generating SSH Keys on Fabric Portal

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

7. **Click on "Generate"**
   - Click the "Generate" button to create your SSH key pair.

8. **Save the Private Key**
   - After the key pair is generated, the private key file will be automatically downloaded to your computer. Save this file to a secure location (e.g., C:\Users\<YourUsername>\.ssh\bastion_pvt).

9. **Copy the Public Key**
    - The public key will be displayed on the portal. Copy the entire content of the public key to your PC. Save this file to a secure location (e.g., C:\Users\<YourUsername>\.ssh\bastion_pub).


## Using Existing SSH Keys

If you already have SSH keys generated, you can use them without generating new ones. Simply copy the public key and add it to your Fabric Portal account.

## Section 2: Important Details to Keep in Mind while Generating SSH Keys for FABRIC:

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




