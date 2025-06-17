# 🛡️ Day 5 – Mastering Linux Ownership & Permissions

---

## 👤 Users, Groups & Access Model

Today I explored how **users** and **groups** control access in Linux.  
Every file/directory has:
- An **owner (user)** 🧑‍💻
- An **associated group** 👥
- Permission sets for: **user**, **group**, and **others** 🔐

🗂️ File info is stored in:
- `/etc/passwd` – user info & UID
- `/etc/shadow` – encrypted passwords 🔒
- `/etc/group` – all group associations

---

## 📂 Users Types

I learned about 3 types of users:

- **Root** (👑 full power)
- **Regular** users like `vagrant`, `nix` 👨‍💻
- **Service** users like `ftp`, `apache`, etc. ⚙️

Each uses different shells:
- `/bin/bash` for interactive users
- `/sbin/nologin` for service/system users

---

## 🔀 User & Group Management

I practiced:
- Creating users: `useradd jenkins`
- Creating groups: `groupadd devops`
- Adding users to groups:  
  `usermod -aG devops ansible`
- Switching users: `su - ansible`

Also:
- Deleted users using `userdel -r kubernetes` to remove home dir too.

---

## 🧪 Permissions & Ownership

Linux permissions use:
- `r` (read = 4), `w` (write = 2), `x` (execute = 1)

🧾 Octal Example:
- `chmod 750 file` =  
  - `u=rwx` (7)
  - `g=rx` (5)
  - `o=---` (0)

✍️ Symbolic Method:
- `chmod u+rwx,g+rw,o-r file`
- `chmod a=r file`

Changed ownership with:
- `chown -R user:group folder/`

---

## 🧰 Utility Commands

- `last` → list login sessions  
- `who` → who's logged in  
- `lsof -u username` → files accessed by user  

🔍 Checked permission results using: `ls -l` and actual `/etc/group` edits!

Also learned about `truncate -s 30 file` to shrink/extend file size. Wild output seen in `vi`/`vim`! 🔮

---

## 📎 Bonus: Access Control List (ACL)

🆕 Tip: `setfacl` and `getfacl` can give **finer control** beyond normal `chmod`.

---

## ✅ Summary

🔓 I now fully understand:
- File/directory permission structure
- Ownership (user & group)
- Group sharing concepts
- Permission calculation using octal/symbolic
- Access limitations based on identity

💪 I feel *very confident* with access control in Linux. Time to move on!

---

📂 **Feedback or Suggestions?**  
📎 LinkedIn: [linkedin.com/in/nischal-koirala-174066323](https://linkedin.com/in/nischal-koirala-174066323)  
📁 X: [x.com/](https://x.com/nischalkoiralaa)

---

🧠 #Linux #DevOpsJourney #ShellScripting #LearningInPublic #Permissions #FileAccess #UserManagement #OpenToWork

