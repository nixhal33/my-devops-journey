# Day 12 – Hosting a Website using HTTPD & Preparing WordPress Deployment (Project #1)

Today marks the start of my first real-world DevOps project where I bring everything I’ve learned from Day 1 to Day 11 into action.

---

## 🧠 Objective:

To set up and host a static website using Apache (`httpd`) on a CentOS 7 VM and prepare another VM running Ubuntu Jammy to host WordPress via the LAMP stack (Linux, Apache, MySQL, PHP). I will automate the entire setup using Vagrant provisioning.

---

## ✅ What I Achieved:

- Created a new directory named `jobportal` inside my `vagrant-vms` workspace.
- Initialized a Vagrantfile using: `vagrant init eurolinux-vagrant/centos-stream-9`
- Enabled a private IP to access the website from my browser.
- Provisioned the VM to install `httpd` and perform system updates.
- Verified that Apache’s default landing page is served from `/var/www/html/`.

---

# 🧩 Key Config Changes Made in `Vagrantfile`:

Here’s a quick look at the configuration changes I made in the `Vagrantfile` to make this baby work:

```ruby
# File: Vagrantfile (for CentOS stream)
Vagrant.configure("2") do |config|
  config.vm.box = "eurolinux-vagrant/centos-stream-9"

  config.vm.network "private_network", ip: "192.168.56.111"  # To access website via browser

  config.vm.provision "shell", inline: <<-SHELL
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
  SHELL
end


## 🌐 Hosting the Template:

Went to [tooplate.com](https://www.tooplate.com) to choose a free HTML template for the site. Realized the `.zip` would be downloaded on the host machine. Explored 3 options to get it inside the VM:

1. Use `wget` (direct link from DevTools)
2. Use `rsync` from host to guest
3. Use synced folders via Vagrant

I chose the first method:  
Opened **DevTools (F12)** → Network → Clicked download → Got the direct `.zip` URL → Used `wget` inside `/var/www/html/`

Extracted and replaced the content of `/var/www/html/` with my template files and restarted `httpd`. Visited the assigned IP in my browser — the website hosted successfully!

---

## 🔧 Tools & Skills Used:

- Apache HTTPD Web Server
- Private networking with Vagrant
- CLI skills to configure and troubleshoot
- DevTools for extracting direct file links
- Vagrant provisioning
- VM file structure, services, and management

---

## 📅 What’s Next (Day 13 Preview):

- Configure second VM (Ubuntu Jammy)
- Install LAMP stack: Apache + MySQL + PHP
- Setup WordPress blog on that VM
- Automate entire setup via `Vagrantfile` provisioning

---

## 🚀 Reflections:

This project officially marks the beginning of my **DevOps builder mindset**. No more copy-paste tutorials — every choice I made today was based on understanding, not guessing. I’m proud of how I approached issues, used multiple strategies, and stayed focused.

I feel comfortable now handling web server deployments, VM management, and provisioning basics.

---

## 🔗 Related Links:
- My DevOps Journey Repo: [github.com/nixhal33/my-devops-journey](https://github.com/nixhal33/my-devops-journey)
- Free HTML Templates: [tooplate.com](https://www.tooplate.com)

- My linkedin: [linkedin.com/in/nischal-koirala-174066323]
---

*Thank you for reading. Tomorrow, I take on WordPress hosting on Ubuntu and automation magic with Vagrant. Onward!*
