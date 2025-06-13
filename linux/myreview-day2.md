# 🚀 Day 2 – My DevOps Journey (Linux Edition)

## 🔗 Symlinks vs Hard Links
- Practiced `ln` and `ln -s`.
- Learned soft links break when the original file is deleted, hard links don't.
- Understood how **inodes** play a key role — hard links share inodes, symlinks point to paths.

## ✍️ Vim Editor Practice
- Practiced `vim`, the improved version of `vi`.
- Used `:se nu` to show line numbers — super helpful!
- Still getting the hang of shortcuts but making solid progress.

## 📂 File Types
- Used `file` command to identify file types.
- Types explored: `-` (regular), `l` (link), `d` (directory), `c` (character), `s` (socket), `p` (pipe).

## 🧠 Text Processing Commands

### 🔍 grep
- Faced issue when redirecting output to the same file being searched — fixed it!
- Practiced recursive and case-insensitive searches.

### 👀 tail -f
- Used `tail -f /var/log/messages` to monitor logs in real time.
- Helpful for troubleshooting and checking system events.

### ✂️ cut
- Clipped specific fields: `cut -d: -f1 /etc/passwd` and `ls -l | cut -c1-3`.
- Combined with `head` to filter top N lines and extract fields.

### 🧮 awk
- Still tricky, but powerful.
- Practiced `awk '{print $1}'` and other variations.
- Combined with pipes: `ls -l | awk '{print $NF}'` to get the last field.

---

📓 **Summary:**  
Feeling more confident with Linux internals. Still practicing, still learning — one day closer to DevOps mastery! 💪🔥

My Take: 
I am creating my own review for my better understanding with the commands and for the public viewers and recruiters too. Today was hectic and linux is not an easy thing. But I am still going strong. I will do won't stop.!!!! 

Btw if anywhere i am wrong in these section please don't hesitate to correct me. Thank You!! 
