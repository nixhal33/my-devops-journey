🚀 DevOps Journey – Day 8: Services, Processes, Archiving & Ubuntu vs CentOS

Today was a deep dive into **systemd services**, **process management**, **log archiving**, and comparing **Ubuntu vs CentOS**.

---

### 🔧 Services & Systemd

- Installed and tested the `httpd` service.
- Learned that `httpd` is both a **package** and a **service**.
- Managed the service using:
  
  ```bash
  systemctl status httpd
  systemctl start httpd
  systemctl enable httpd
  systemctl stop httpd
  systemctl disable httpd
  systemctl restart httpd
  systemctl reload httpd

    Checked service state:

systemctl is-active httpd
systemctl is-enabled httpd

Masked/unmasked services:

    mask → blocks starting service

    unmask → restores ability to start

Verified symlink location:

/etc/systemd/system/multi-user.target.wants/

Listing services:

    systemctl list-units --type=service     # Active
    systemctl --type=service                # All (active/inactive)

🔹 Common Services:

    sshd – SSH access

    nginx / httpd – Web servers

    crond – Scheduled tasks

    firewalld – Firewall

    NetworkManager, nmtui – Network mgmt

⚙️ Processes & PID Management

🧭 Tools to Monitor:

top                 # Interactive view
ps aux              # All processes
ps -ef              # Process tree with PPID

🔢 PID Insight:

    PID 1 = systemd/init (first process on boot)

    Load average: 1, 5, 15 minutes

    Status types: S=sleeping, Z=zombie, R=running

👨‍👩‍👧 Forking Example:

root    4575  1     0 /usr/sbin/httpd -DFOREGROUND
apache  4576  4575  0 /usr/sbin/httpd -DFOREGROUND

📌 Killing Processes:

kill <pid>          # Graceful
kill -9 <pid>       # Forceful

💀 Orphans & Zombies:

    Killing parent may terminate children.

    Orphans can be adopted by systemd.

🧹 Clean Up:

ps -ef | grep <process> | grep -v grep | awk '{print $2}' | xargs kill -9

📦 Archiving, Backup & Compression

🗄️ With tar:

tar -czvf httpd_archive0620.tar.gz /var/log/httpd/
# Extract:
tar -xzvf httpd_archive0620.tar.gz
# Extract to target:
tar -xzvf httpd_archive0620.tar.gz -C /target/dir/

🗃️ With zip/unzip:

zip -r log123.zip hawkey.log
unzip log123.zip

✅ Use cases: backups, log rotation, space management
🐧 Ubuntu vs CentOS – System Behavior Differences

👤 User Creation:

useradd <name>     # Doesn't create home (Ubuntu)
adduser <name>     # Creates home & prompts (Ubuntu)
userdel -r <name>  # Delete user + home

📝 visudo Editors:

    Ubuntu → opens in nano

    CentOS → opens in vim

➡️ Change default:

export EDITOR=vim
visudo

📦 Package Management:

🟦 Ubuntu:

dpkg -i package.deb
dpkg -l | grep <pkg>
dpkg -r <pkg>

apt update
apt install apache2
apt remove apache2
apt purge apache2

🟥 CentOS:

yum install httpd
yum remove httpd

⚠️ Note: On Ubuntu, installing apache2 auto-starts and enables the service. Not the case on CentOS.
🧠 Key Takeaways

    Mastered systemd for managing Linux services

    Understood how processes fork and how to manage PIDs

    Practiced safe archive and backup techniques with tar and zip

    Compared Ubuntu and CentOS on user mgmt, services, and packages

    Learned how Linux handles orphans, zombies, and service trees


💬 If you're learning Linux, DevOps, or automation — let's connect and grow together! 🌱

🔗 LinkedIn: [www.linkedin.com/nischal-koirala-174066323] 

🐙 GitHub: [www.github.com/nixhal33/my-devops-journey]

 🐦 X: [www.x.com/nischalkoiralaa]

