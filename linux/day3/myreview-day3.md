# 🧠 Day 3 – DevOps Linux Learning Log

## 🔍 egrep – Advanced Text Search
- Used `egrep` to search multiple keywords (e.g., `rom|brad|gra`) in files.
- A more flexible alternative to `grep` for pattern matching.

## 🔡 sort & uniq – Sorting & De-duplication
- Sorted content with `sort` (alphabetical, reverse, field-based).
- Used `uniq` to filter duplicate lines, improving data clarity.

## 🛠️ sed – The Stream Editor
- Modified file content directly from the terminal.
- Perfect for automation and permanent in-line edits.

## ↔️ I/O Redirection
- Redirected command outputs using `>`, `>>`, and `<`.
- Emptied files using `/dev/null`:  
  `cat /dev/null > filename`.

## 🗂️ Counting & Navigation
- Counted total lines in directories using:  
  `ls -ltr /etc/ | wc -l`
- Counted exact number of directories using `find . -type d | wc -l`.

## 🔎 find vs locate
- `find` for deep system searches (e.g., `find / -name file.txt`).
- `locate` for faster results after indexing with `updatedb`.

---

### 🧾 Summary:
Today was packed with core Linux tools vital for DevOps workflows.  
Focused on text processing, file editing, system navigation, and file location tools.  
Day 3 ✅ — staying consistent and closer to my DevOps goal. 🚀

For more clarity:
I have created this review in more structured way with the help of AI. So any mistakes in my review presented in there, you can correct me. Thanks! 
