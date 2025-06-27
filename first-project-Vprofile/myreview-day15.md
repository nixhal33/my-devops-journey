# 🗓️ Day 15 Review: vProfile Project Setup (Manual - Local Environment)

## 📌 Today's Mission

The goal was to manually set up a **multi-tier Java web application (vProfile)** on local VMs using **Vagrant**. This setup is the **foundation** for advanced DevOps projects like Dockerization, Kubernetes orchestration, and CI/CD pipeline design.

Today’s emphasis was on **understanding the infrastructure manually**, not just automating it. Learning the pain points is key before automating the solutions.

---

## 🔧 Tools & Environment

- 🖥️ **VirtualBox** – Hypervisor for running the VMs  
- 📦 **Vagrant** – Provisioning and VM orchestration  
- 🔧 **Git Bash** – Command execution environment  
- 📝 **VS Code** – For editing and debugging Vagrantfile and scripts  
- 🌐 **vagrant-hostmanager plugin** – For mapping VM hostnames to IPs easily  

---

## 📂 Project Overview

### 🎯 Purpose

- **Baseline Setup** – Build the vProfile stack from scratch  
- **Hands-On Lab** – Get comfortable configuring services manually  
- **Better Automation Later** – Know the “why” before automating the “how”  

---

## 🧱 Stack Components

The application is built around a **5-tier architecture**:

| Component   | Purpose                                   |
|-------------|-------------------------------------------|
| **Nginx**   | Load balancer & reverse proxy             |
| **Tomcat**  | Java web server hosting the application   |
| **MySQL**   | Database storing user credentials         |
| **Memcached** | Caching frequent DB queries             |
| **RabbitMQ** | Asynchronous messaging queue             |

---

## 🧑‍🔧 Manual Setup Workflow

### 1️⃣ Cloned the Repo  
Cloned the vProfile project repo which includes all necessary files (`Vagrantfile`, app code, and shell scripts).

### 2️⃣ Brought Up the Machines Individually

Each VM was spun up using Vagrant one at a time to understand the roles:

```bash
vagrant up <vm-name>

Validated connectivity by pinging between VMs:

ping nginx
ping tomcat
ping db

3️⃣ Installed Hostmanager Plugin

vagrant plugin install vagrant-hostmanager

    Automatically mapped hostnames to IPs

    Easier to reference machines (e.g., ping tomcat instead of IP)

4️⃣ Manual Provisioning (Service-by-Service)

Following the bottom-to-top approach:

    MySQL

        Installed MySQL Server

        Created accounts DB and added necessary tables

    Memcached

        Installed and verified with telnet localhost 11211

    RabbitMQ

        Installed and enabled management console

    Tomcat

        Deployed WAR file manually

        Verified app loads and logs show DB & cache interactions

    Nginx

        Installed and configured reverse proxy

        Ensured proper load balancing to Tomcat instance

✅ Verification

    Accessed the app from browser via http://nginx

    All backend services communicated without issue

    Used ping, curl, and telnet for testing network and service availability

    Validated multi-tier architecture manually

🧠 Key Takeaways

    🛠️ Manual Setup ≠ Waste of Time – Understanding service dependencies is crucial before automating.

    🔄 Order Matters – Services need to be provisioned in the correct sequence.

    🌐 Hostmanager is a lifesaver – Made inter-VM communication seamless.

    🧪 Testing Each Layer – Validated each service individually before moving on.

📍 What’s Next?

    🔁 Repeat the setup using full automation (Shell scripts + Vagrant)

    🐳 Dockerize each component for containerized deployment

    🛡️ Explore configuration management with Ansible or Puppet

    🌍 Set up custom domains instead of raw IPs

    🕸️ Add network diagrams to document flow better

🚀 Conclusion

Day 15 was a solid deep-dive into the manual wiring of a real-world multi-tier application. I now have a complete local environment running vProfile — verified, ping-tested, and ready for automation.

Tomorrow, we move toward automating the entire stack, but with the comfort of knowing exactly what’s happening under the hood.

#DevOps #vProfile #MultiTierArchitecture #ManualProvisioning #Vagrant #Virtualization #RabbitMQ #Memcached #MySQL #Tomcat #Nginx #Linux #HostManager #Day15 #IaaC

