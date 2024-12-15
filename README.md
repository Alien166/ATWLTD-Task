# Setting Up For Basic LAMP Stack 

Test the LAMP Stack via a public URL on http://3.89.204.96/index.php .


- **Web Server:** Apache
- **Database Server:** MariaDB
- **Programming Language:** PHP
- **Operating System:** Ubuntu
- 
Each section below includes detailed steps for installation and configuration.


---

## Step-by-Step explanation 

### 1. **Update the System**
First, make sure your system is up-to-date:

```bash
# Update the package list and upgrade the installed packages
$ sudo apt update
$ sudo apt upgrade -y
```
### 2. **Install Apache, PHP, and MariaDB**
Install Apache Web Server, MariaDB Database Server

```bash
$ sudo apt install apache2 mariadb-server php php-mysqlnd -y

```

### 3. **Start the Services**

```bash
# Start Apache and MariaDB
$ sudo systemctl start httpd
$ sudo systemctl start mariadb

```

### 4. **Check the services are running**

```bash
$ sudo systemctl status httpd
$ sudo systemctl status mariadb

```


### 5. **Test Apache Setup**
Apache by default serves files from /var/www/html/.  to test the setup 

![Test Apache Setup with index.html File ](./img/Html.png)



### 6. **Test PHP**
To verify that PHP is working with Apache

![Test Apache Setup with index.php File ](./img/indexPHP.png)


### `index.php`

This file serves as the main entry point for the simple PHP-based webpage hosted as part of the LAMP stack setup task. that can display dynamic content from the server.

- The file outputs a simple welcome message to verify PHP functionality with Apache.
- It is designed to test the connection between PHP and the Apache server



![Test Apache Setup with index.php File ](./img/PHP-2.png)


---

# sub task #2 : LAMP Stack on AWS Cloud

Test the Public  via a public URL on http://3.89.204.96/index.php  .

### 1. **Install Apache, PHP, and MariaDB**
Install Apache Web Server, MariaDB Database Server

```bash
$ sudo apt install apache2 mariadb-server php php-mysqlnd -y

```

### 2. **Start the Services**

```bash
$ sudo systemctl start httpd
$ sudo systemctl start mysql

```

### 3. **Check the services are running**

```bash
$ sudo systemctl status httpd
$ sudo systemctl status mariadb

```


### 4. **Test Apache Setup**
Apache by default serves files from /var/www/html/.  to test the setup 

![Test Apache Setup with index.html File ](./img/hello-cloud.png)



### 5. **Test PHP**
To verify that PHP is working with Apache

![Test Apache Setup with index.php File ](./img/cloud-php-1.png)


### `index.php` with differce date

- It is designed to test the connection between PHP and the Apache server with differce date

![Test Apache Setup with index.php File ](./img/cloud-php-2.png)


### `index.php`

- The file outputs a simple welcome message to verify PHP functionality with Apache  with differce date

![Test Apache Setup with index.php File ](./img/cloud-php-3.png)



### `index.php`

- The file outputs a simple welcome message to verify PHP functionality with Apache  with differce date


![Test Apache Setup with index.php File ](./img/cloud-php-4.png)



---

## Sub-task #3: Networking Basics

### 1. **IP Address**

 is a unique identifier assigned to every device connected to a network. Its purpose is to enable communication between devices over the internet or within a local network. IP addresses can be either:

- **IPv4 :** A 32-bit address, typically written in four groups of numbers separated by periods (e.g., 192.168.1.1).
- **IPv6 :** A 128-bit address, written in eight groups of four hexadecimal digits separated by colons (e.g., 2001:0db8:85a3:0000:0000:8a2e:0370:7334).

An IP address helps route traffic to the correct destination on a network, enabling devices to communicate.

---

### 2. **MAC Address**

A **MAC address** is a unique identifier assigned to a network interface card (NIC) for use as a network address in communications within a network segment. 

- The MAC address is used for identifying devices on a local network (LAN) and is essential for data transfer at the data link layer of the OSI model.
- It is a 48-bit address (e.g., `00:1A:2B:3C:4D:5E`), written in hexadecimal.

**Key Differences between MAC and IP Addresses:**
- A MAC address operates within a local network (LAN), whereas an IP address operates across networks (e.g., on the internet).
- A MAC address is generally fixed to the hardware (NIC), while an IP address can change depending on the network or its configuration.
- *The MAC address works at the data link layer (Layer 2) of the OSI model, while the IP address works at the network layer (Layer 3).

---

### 3. **Switches, Routers, and Routing Protocols**

- **Switches:**
  is a device that connects multiple devices within a local area network (LAN). It operates at the data link layer and forwards data frames based on MAC addresses. It 
  ensures efficient communication between devices in the same network.

- **Routers:**
  is a device that connects different networks, such as LANs to WANs (Wide Area Networks) or to the internet. It operates at the network layer and forwards packets based 
  on their IP addresses. Routers determine the best path for data to travel across networks using routing tables.

- **Routing Protocols:**
  Routing protocols define the rules that routers follow to determine the most efficient route for forwarding data. Common routing protocols include:
  - **RIP (Routing Information Protocol):** A distance-vector routing protocol that uses hop count as its metric.
  - **OSPF (Open Shortest Path First):** A link-state routing protocol that uses the shortest path algorithm to find the best route.
  - **BGP (Border Gateway Protocol):** A path vector protocol used to exchange routing information between different autonomous systems on the internet.

---

### 4. **Remote Connection to Cloud Instance: Steps to Connect to a Cloud-Based Linux Instance from a Remote Machine (e.g., Using SSH)**

To connect to your cloud-based Linux instance remotely, you will typically use **SSH (Secure Shell)**. Below are the steps:

1. **Obtain SSH Access Credentials:**
   - Ensure you have the **private key** (for key-based authentication) or the **username and password** to connect to your server.
   - If you're using AWS EC2, the private key file is downloaded when you create your instance.

2. **Check Security Group Settings:**
   - Make sure the **security group** for your cloud instance allows inbound traffic on port **22** (default for SSH).

3. **Connect via SSH:**
   - Open a terminal on your local machine and use the following command to connect to the remote server:

   ```bash
   $ ssh -i /path/to/your-key.pem ubuntu@<your-public-ip>
