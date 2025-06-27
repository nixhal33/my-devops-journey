
🚀 My Linux & DevOps Journey: Days 1-6 Review
Day 1 – Linux Basics & Navigation

    Learned fundamental Linux commands: ls, cd, pwd, mkdir, rmdir.

    Practiced file handling: creating (touch), removing (rm), moving (mv), and copying (cp).

    Understood directory structures and path types (absolute vs relative).

    Mistake to note: Initial confusion about recursive copying – clarified on Day 2.

Day 2 – File Operations & Command Essentials
Key Concepts:

    cp -r copies folders recursively.

    mv moves files/directories.

    file command shows file type.

    Hidden files listed with ls -a.

    Counting lines with wc -l.

Practical Exercises:

    Created directories & files with mkdir and touch.

    Created symbolic links: ln -s a.txt link_to_a.

    Moved files into new folders.

    Used head and wc to explore file contents.

Mistakes & Learnings:

    Clarified difference between recursive copying and regular copying.

    Practiced correct wc options for lines, words, characters.

Day 3 – Text Processing & File Types
Key Concepts:

    Explored vim editor basics.

    Used file command to identify file types (- regular, l link, d directory, etc.).

    Text search with grep, egrep (multi-pattern), and tail -f for live monitoring.

    Extracted fields with cut and used awk for advanced processing.

    Sorted and filtered duplicates with sort and uniq.

    Stream editing using sed for inline replacements.

Practical Challenges:

    Used recursive and case-insensitive grep.

    Applied cut and awk together.

    Practiced sed -i for replacing text inside files without opening.

Mistakes & Learnings:

    Initially mixed up sort flags; learned to combine cut with sort and uniq properly.

    Recognized better recursive directory counting commands (find . -type d | wc -l) over naive ls usage.

Day 4 – Shell Scripting & Command Pipelines (Summary from your logs)

    Practiced chaining commands with pipes (|).

    Used redirection operators (>, >>, <) effectively.

    Understood command substitution.

    Explored bash variables and scripting basics.

Day 5 – Mastering Linux Ownership & Permissions
Key Concepts:

    Linux user & group model: owners, groups, others.

    Important files: /etc/passwd, /etc/shadow, /etc/group.

    User types: root, regular, service (with appropriate shells like /bin/bash or /sbin/nologin).

    User/group management: useradd, groupadd, usermod, userdel.

    Permission bits: read (4), write (2), execute (1).

    Changed permissions via octal (chmod 750) and symbolic (chmod u+rwx,g+rw,o-r) methods.

    Changed ownership recursively with chown -R user:group folder/.

    Monitored users via last, who, and lsof.

    Used truncate to resize files.

    Learned about Access Control Lists (setfacl, getfacl) for fine-grained permissions.

Mistakes & Learnings:

    Needed to clarify chgrp only changes group ownership, not user ownership.

    Practiced avoiding overwriting commit messages by adding files selectively in git.

Day 6 – Practical Review & Combined Concepts

    Answered questions combining Day 2 & 3 knowledge on commands like cut, sort, uniq, sed.

    Practiced symbolic links, file permission displays, and shell utilities.

    Improved understanding of recursive commands and output filtering.

    Learned to correctly sort /etc/passwd usernames in reverse and display unique entries using:

cut -d: -f1 /etc/passwd | sort -r | uniq

    Applied sed -i for inline file text replacement.

Mistakes & Learnings:

    Clarified difference between sort and cut flags; mixing them can cause errors.

    Learned the correct way to count directories recursively, avoiding non-recursive commands.

Summary & Reflections

    Over these 6 days, I’ve built a strong foundational understanding of Linux file systems, permissions, user management, and text processing.

    I improved practical skills in bash commands, scripting, and system administration.

    Made mistakes around command options and recursive operations but learned and corrected them quickly.

    Feel confident managing users, groups, permissions, and working with files and text streams.

    Excited to continue this journey with deeper scripting, automation, and DevOps tooling next.

Connect with Me!

🔗 LinkedIn: linkedin.com/in/nischal-koirala-174066323
🐦 X (Twitter): x.com/nischalkoiralaa

#Linux #DevOpsJourney #ShellScripting #Permissions #UserManagement #TextProcessing #LearningInPublic
