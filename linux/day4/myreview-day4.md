# 🚀 Day 4 – 👥 Users, Groups & Permissions in Linux

---

## 🎯 What I Learned Today:

### 👤 Users & Groups — The Core of Access Control

- Everything in Linux is owned by **users** and associated with **groups**.
- Users are categorized into:
  - 👑 `root` – Superuser with full system control
  - 👨‍💻 Regular Users – e.g., `vagrant`, `nix`
  - ⚙️ Service Users – e.g., `ftp`, `ssh`, `apache` (use `/sbin/nologin`)

### 🧾 Key Files to Understand

- 📁 `/etc/passwd` – Stores **username** and **UID**
- 🔒 `/etc/shadow` – Stores **encrypted passwords**
- 👨‍👨‍👧 `/etc/group` – Stores **group names and members**

---

## 🛠️ Managing Users & Groups

- ➕ Create a user: `useradd jenkins`
- ➕ Create a group: `groupadd devops`
- ➕ Add user to group: `usermod -aG devops ansible`
- 🔍 Confirm membership: `grep devops /etc/group`

💡 Tip: You can also *manually* edit `/etc/group` to manage memberships!

---

## 🔄 Switching Users & Understanding Shells

- 🌀 Switched users with `su - username` (no password when root!)
- 🧠 Learned user shells:
  - Regular users: `/bin/bash`
  - Service users: `/sbin/nologin` (non-interactive login)

---

## 🔎 Monitoring Users

- 🕵️ `last` – Shows previous login history
- 👁️ `who` – Shows current users logged in
- 📂 `lsof -u username` – Lists open files for a given user session

---

## 🧹 Deleting Users

- Delete user only: `userdel ansible`
- Delete user + home dir: `userdel -r kubernetes`

---

## 💡 Discovered Command: `truncate`

- ✂️ Shrinks/extends file size: `truncate -s 30 filename`
- 🧪 Extending adds unreadable chars (`@`, `^`, etc.) — fun to inspect in `vim`!

---

## 🔚 Wrap-up

Day 4 was **hands-on and technical** — explored how Linux handles **user identity, group-based access, and user session auditing**.

Even discovered some bonus commands on the way. Loving the depth of Linux more each day. 🌱

---

📎 Connect or Provide Feedback:
- 🔗 LinkedIn: [linkedin.com/in/nischal-koirala-174066323](https://linkedin.com/in/nischal-koirala-174066323)
- 💻 GitHub: [github.com/nixhal33](https://github.com/nixhal33)
     Twitter: [x.com/nischalkoiralaa/](https://x.com/nischalkoiralaa)
👉 I'm happy to be corrected if I went wrong anywhere. Let's learn together! 🙌

---
My personal note:
- I personally make a note of mine(fully raw no any filters/grammers) while studying these things and at last, I ask AI to help me create a nice and structured review of mine to post in github and my different social media handles. Thank you !

