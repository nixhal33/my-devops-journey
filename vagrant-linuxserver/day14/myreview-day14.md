# Day 14 – Multi-VM Setup Using Single Vagrantfile (aka: Mini Project 2 💥)

## 📌 What was on the agenda?

Today's topic was simple on paper: **"Multiple VMs through a Single Vagrantfile."** It was meant to be yesterday's task, but like any good plot twist, today it happened instead—and boy, what a ride.

After sipping a bit of digital coffee ☕, I dived straight into [HashiCorp’s official Vagrant docs](https://developer.hashicorp.com/vagrant/docs/multi-machine). The multi-machine section was impressively clean and beginner-friendly. It explained how to define multiple guest VMs inside a single Vagrantfile and control each independently. Simple in theory… until I added SQL to the mix. But we’ll get there.

---

## 🏗️ What I Built

Created a `multi-vm` directory and crafted a `Vagrantfile` from scratch (okay, partially copied from the docs initially 😅, but who doesn’t?). Then I rolled up my sleeves and customized it fully:

### 🔧 The Setup

- **VM 1: `website`**
  - OS: `eurolinux-vagrant/centos-stream-9`
  - Role: Runs `httpd`, downloads and hosts a fancy coffee-themed website
  - Provisioning: Installs Apache, fetches template from tooplate, deploys to `/var/www/html`

- **VM 2: `database`**
  - OS: `ubuntu/bionic64`
  - Role: Hosts MySQL and prepares it for WordPress
  - Provisioning: Installs MySQL, creates a DB, grants privileges (eventually…)

All machines had private networking enabled for intra-VM communication.

---

## ⚠️ Where I Faceplanted (Almost)

Everything went **buttery smooth** until... 🧱 MySQL threw:

ERROR 1133 (42000): Can't find any matching row in the user table


After inspecting every semicolon and quotation mark like Sherlock Holmes 🕵️‍♂️, I realized the mistake: I **forgot to add `IDENTIFIED BY 'admin'`** in the GRANT statement. A rookie SQL slip, not a logic bug.

> **Moral of the day:** You can nail the logic and still be humbled by a missing clause. DevOps doesn’t forgive typos. 😤

---

## ✅ What Worked

- 🧠 Understood and applied multi-VM logic in Vagrant
- 📦 Automated provisioning entirely through inline shell scripts
- ⚙️ Booted and configured two VMs tailored to different roles
- 🔍 Learned to debug MySQL permission errors (without flipping the table)

---

## 🎉 Mini Project 2: Delivered!

I now confidently say I can create, manage, and provision **multi-machine environments** using Vagrant. This was no longer theory—it’s **in my muscle memory** now. With both website and database VMs talking nicely and fully automated, it counts as **Mini Project 2, locked and loaded.**

---

## 🔜 What’s Next?

📌 **Day 15**: vProfile Architecture Setup  
- Phase 1: Manual Setup  
- Phase 2: Automation through Provision Scripts

Stay tuned! 😎

---

## 🔗 Connect with me:

- 💼 [LinkedIn](https://linkedin.com/in/nischal-koirala-174066323)
- 🐙 [GitHub](https://github.com/nixhal33/my-devops-journey)
- 🐦 [X (Twitter)](https://x.com/nischalkoiralaa)

