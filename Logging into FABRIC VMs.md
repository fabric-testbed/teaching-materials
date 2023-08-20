# Logging into FABRIC VMs

To access and log in to the VM slivers created as part of a FABRIC slice, you need to use a bastion host, also known as a 'hop node' or 'jump host'. The purpose of bastion hosts is twofold:

1. Provide enhanced security by restricting which IP addresses are allowed to communicate with your VM slivers from the public Internet.
2. Bridge IPv4 and IPv6 connectivity. Many FABRIC sites only offer IPv6 addressable VMs, making them unreachable for users from IPv4 providers. FABRIC bastion hosts, being dual-stacked (supporting both IPv4 and IPv6), address this issue.

Unlike some other environments, FABRIC utilizes at least two SSH keypairs:

1. Your 'bastion' keypair: This keypair has a finite lifetime and needs to be rotated periodically. Its public key is stored on the bastion hosts, allowing you to 'hop' into your VM slivers. FABRIC automatically expires and removes this public key from the bastion host, requiring you to generate a new keypair and upload the public key.
2. Your 'sliver' keypairs: These keypairs are long-lived and the public key is installed into your VM slivers by the FABRIC control framework when creating them. For simplicity, we assume you have one sliver keypair, but you can use multiple keypairs to log in to VMs in different slices.

Registered bastion keys expire after 6 months, and registered sliver keys expire after two years. You can have up to 10 bastion and 10 sliver keypairs, each expiring at different times. Expiration times are available in the 'My SSH Keys' section of the Portal.

You cannot log in to the bastion host itself – this is a security measure. The bastion host is solely used to access your VMs.

Multiple geographically distributed bastion hosts are available, and load balancing is done through the name `bastion.fabric-testbed.net`.

Important to note:
- You exclusively possess the private keys within these keypairs. If lost, the keypairs must be regenerated.
- Even if you generate a keypair through the FABRIC portal, it allows you to download the private key but doesn't store it. FABRIC only stores the public keys.

Additionally, there are two usernames involved:
- The bastion host username, part of your FABRIC identity, can be found in the portal.
- The VM sliver username, often based on the image you chose. For many cloud-ready images, the default usernames are 'ubuntu' or 'centos' depending on the distribution.

Both the Portal and Jupyter Notebooks display the exact SSH command you need to use to log in to each VM, including its IP address and the VM image username.

To demonstrate how to use the SSH config file, consider an example. Use the SSH config to access your nodes directly from the JupiterLab interface's command line:

1. created a slice using the "Hello FABRIC" notebook 
2. Copy the management IP from your printed node.
  ![Managemnet IP](https://file.io/xGOoqxLzhtjN)
3. Open your SSH terminal.
4. Type: `ssh -i <private sliver key file> -F /path/to/SSH/config user@management_ip`.
   - Replace the placeholders <private sliver key file> with actual paths and management_ip with the actual IP address.
 ![Managemnet IP](https://file.io/FHLVSXRLdgCz)
You have successfully accessed your remote host using the SSH config.
