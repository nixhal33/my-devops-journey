# 🚀 DevOps Journey – Day 6: Sudo & Package Management 💡

## 🧠 What I Learned Today

Today was all about diving deep into **sudo privileges** and **Linux package management**!

### 🔐 Sudo: The Superpower of System Access

I began by trying to install packages normally using:

`yum install git -y` — ❌ Nope! Permission denied.  
Switched to using `sudo yum install git -y` — ✅ Boom! It worked!

Then I tested it with a non-root user (`ansible`) and tried running `sudo useradd dexter`. It failed and threw:  
> *"ansible is not in the sudoers file. This incident will be reported."*

So I learned to configure sudo access:

- Switched to `root`
- Ran `visudo` which safely edits the `/etc/sudoers` file
- Found the root entry and added: `ansible ALL=(ALL) ALL` — now `ansible` can run sudo!

But it still asked for the password every time. Annoying, right? So I edited the line to:  
`ansible ALL=(ALL) NOPASSWD: ALL` — no more prompts! 🥳

Also discovered that `sudoers` has syntax checking. If there's an error while saving, it warns you and lets you re-edit safely!

💡 **Pro tip**: A cleaner and safer method is to create a custom file inside `/etc/sudoers.d/` — I created a file and added:  
`%devops ALL=(ALL) NOPASSWD: ALL` to give all users in the `devops` group root powers without password prompts.

---

### 📦 Package Management: rpm & yum

I explored how to manually install `.rpm` packages without internet.  
Browsed **rpmfind.net**, found a CentOS 9 compatible package, used:

`curl -O [link]`  
then installed via:  
`rpm -hiv packagename.rpm` ✅

But hit a **dependency error** while installing `httpd`. Instead of installing dozens of dependencies manually, I learned that:

💡 `yum` automates all dependencies — massive time saver!

Also looked inside `/etc/yum.repos.d/` to understand how repos work.

To install `httpd` easily:  
`yum install httpd` — worked flawlessly when available.

---

### 🤖 Jenkins Installation via Custom Repo

For packages not found in default repos (like Jenkins), I added its official repo manually:

```bash
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo yum install fontconfig java-21-openjdk
sudo yum install jenkins
sudo systemctl daemon-reload

✅ Summary

Today was 🔥! Learned:

    How to assign root privileges using sudo (both for users and groups)

    How to avoid interactive password prompts using NOPASSWD

    Safe sudoers editing with visudo and best practices

    Manual vs automated package installation (rpm vs yum)

    How to add external repos and install tools like Jenkins

Feeling more confident managing system permissions and handling software installations like a true DevOps engineer! 💪

If you noticied any problem in my command or any route here then please feel free to correct me.

Connect with me
Linkedin:  "https://www.linkedin.com/in/nischal-koirala-174066323"
