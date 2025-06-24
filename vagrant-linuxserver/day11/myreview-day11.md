# 📅 Day 11 - DevOps Learning 

## 🧠 Topics Covered
- Vagrant Synced Folders (Default & Custom)
- Shell Provisioning
- Practical Troubleshooting

---

## 🔄 Vagrant Synced Folder - Hands-On Recap

While following my lecture notes, I observed that some files created in my host system (path: `/home/username/vagrant-vms/centos/`) were automatically appearing in the guest VM. However, I didn’t notice this behavior in my setup at first. 🤔

### 🔍 What Went Wrong?
I was mistakenly checking the `/home/vagrant` path inside the VM, expecting synced files to appear there. But then I realized Vagrant uses `/vagrant` as the **default synced folder**.

### ✅ Verification
I:
- Created & deleted files both in host and guest VM.
- Confirmed the syncing works both ways.
- Took screenshots to document it (to be shared on GitHub and LinkedIn).

### 🧾 Key Point:
> The `/vagrant` folder inside the guest VM is automatically synced with the Vagrant project folder in the host system. This ensures your data is safe on the host even if the VM is lost.

---

## 🔧 Custom Synced Directory

To try a custom synced folder:
1. Uncommented this in `Vagrantfile`:
   config.vm.synced_folder "/home/nix/Desktop/Devops/synced-dir", "/opt/synced-directory-to-host"

2. Created the synced-dir manually on the host.

3.  Reloaded the VM with vagrant reload.

🎉 Successfully accessed /opt/synced-directory-to-host inside the VM and verified bi-directional sync.

🛠️ Provisioning in Vagrant

Provisioning means automated execution of commands or scripts right after the VM boots. Here's what I used:

config.vm.provision "shell", inline: <<-SHELL
  apt update
  apt install -y apache2
  mkdir /opt/Provisioned-directory
  free -m
  uptime
  ps -ef
  cat /etc/os-release
SHELL

⚠️ First time, it didn’t run because I forgot to use the right command:
which was "vagrant reload --provision"

After running it correctly, everything worked flawlessly.

💡 New Concepts Learned

    Provisioning happens right after VM startup.

    Bootstrapping is the initial setup process, often involving provisioning.

    Realized how container concepts overlap with this — provisioning, isolation, automation.

🔁 Automation Tip: Aliases

I also learned how to:
Create custom aliases in Linux to quickly cd into my Vagrant folders, start or stop VMs.
This saves time during repetitive testing and script writing.


🏁 Summary

Today was productive! Explored synced directories and provisioning in depth. Alsogot familiar with Git branch issues (solved some Git headaches too 😅). I’m documenting everything in my vagrant-linuxserver folder on GitHub.

Feeling more confident managing VM lifecycles and automations! 🚀


🔗 Connect With Me

If you're following a similar DevOps journey or got stuck while practicing, feel free to connect!
I'm happy to help or even pair up for study.

    🌐 GitHub: github.com/nixhal33/my-devops-journey

    💼 LinkedIn: linkedin.com/in/nischal-koirala-17066323

    🐦 X: x.com/nischalkoiralaa
