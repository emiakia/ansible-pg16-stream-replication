# PostgreSQL 16 Installation and Replication Setup on Ubuntu 24

This project automates the installation and configuration of PostgreSQL 16 on Ubuntu 24 servers. It also sets up stream replication and verifies its correctness.

## Project Overview

1. **Pre-Installation Tasks:**
   - Set hostnames for the servers.
   - Configure relevant settings before installation.

2. **Installation:**
   - Install PostgreSQL 16 on Ubuntu 24 servers.

3. **Post-Installation Configuration:**
   - Configure servers for stream replication.
   - Verify the correctness and activity of replication.

## Variables

The project uses a `vars.yaml` file to store configuration variables. You need to update the IP addresses in this file according to your environment.

### `vars.yaml`

```yaml
---
# Hostnames
hostname_server1: "postgres01"
hostname_server2: "postgres02"

# IPs
ip_server1: "192.168.174.192"
ip_server2: "192.168.174.193"

# SSH configuration
ssh_user: "kia"
ssh_key_path: "/home/{{ ssh_user }}/.ssh/id_rsa.pub"

# PostgreSQL User and Database Configuration
new_user: "kiausr"
new_user_password: "123"
new_db: "kiadb"
db_owner: "{{ new_user }}"
