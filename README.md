## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[network diagram](Images/Network Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible_config.yml file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- The load balances protect the availability of the web aplications in conjunction with the jumpbox used to manage each component

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system metrics.
- Filebeat monitors any requests or changes to files on the system.
- Metricbeat monitors the system metrics such as Cpu utilization.
The configuration details of each machine may be found below.

| Name     | Function                                             | IP Adress | Operating System   |
|----------|------------------------------------------------------|-----------|--------------------|
| Jump Box | Manages Creation and  configuration of other systems | 10.0.0.5  | Linux Ubuntu 18.04 |
| Web 1    | Serves DVWA                                          | 10.0.0.6  | Linux Ubuntu 18.04 |
| Web 2    | Serves DVDA                                          | 10.0.0.7  | Linux Ubuntu 18.04 |
| ELK      | Collects logs and  runs the ELK stack                | 10.1.0.4  | Linux Ubuntu 18.04 |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- My Public IP

Machines within the network can only be accessed by Jump Box.
- The ansible docker container(172.17.0.1) located on Jump box is able to acces the ELK container

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessable | Allowed IP Adresses |
|----------|---------------------|---------------------|
| Jump Box |         Yes         | My Private IP       |
| Web 1    |          No         | 10.0.0.0/24         |
| Web 2    |          No         | 10.0.0.0/24         |
| ELK      |          No         | 10.0.0.0/24         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it is easy to scale
to the amount of systems needed for any application.

The playbook implements the following tasks:
- Install Docker
- Install python-3 module
- Install Docker Module
- Download and install docker elk container
- Enable Docker on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-Web 1 (10.0.0.6)
-Web 2 (10.0.0.7)

We have installed the following Beats on these machines:
- Metricbeat
- Filebeat

These Beats allow us to collect the following information from each machine:
- Metricbeat collects sytem metrics such as CPU utilization
- Filebeat tracks any requests or changes made to files on the system 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk_playbook.yml file to /etc/ansible.
- Update the config file to include the web servers IP Adresses
- Run the playbook, and navigate to the ELK docker container to check that the installation worked as expected.


