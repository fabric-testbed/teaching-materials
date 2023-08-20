## Section 1: Step-by-Step Guide: Generating SSH Keys for FABRIC

## Introduction

SSH (Secure Shell) keys are a secure and convenient way to authenticate yourself to remote servers, like the Fabric Portal.

## Approach 2:- Generating SSH Keys on PowerShell (Windows)

### 1. Open PowerShell

- Open PowerShell by searching for "PowerShell" in the Start menu or pressing `Win + X` and selecting "Windows PowerShell" or "Windows PowerShell (Admin)".

### 2. Check for Existing SSH Keys

- Use the following command to check for existing SSH keys: `ls ~/.ssh`

- If you see files like `id_ed25519` and `id_ed25519.pub`, you already have SSH keys, and you may skip the next step and proceed to the "Using Existing SSH Keys" section. If not, continue to the next step.

### 3. Generate SSH Key Pair

- For Ed25519 key pair, use the following command: `ssh-keygen -t ed25519 -C "your_email@example.com"`

- You will be prompted to enter a location to save the keys. Press `Enter` to accept the default location `C:\Users\<YourUsername>\.ssh\filename` and then choose a passphrase to secure your private key.

### 4. View and Copy Public Key

- To view your public key, use the following command:
``cat C:\Users<YourUsername>.ssh\filename.pub # for Ed25519 key``

- Copy the entire contents of the public key to your clipboard.


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




