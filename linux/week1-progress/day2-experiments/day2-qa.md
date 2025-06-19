This will contain both practical and conceptual of 5/5 questions each and I will solve them according to my understanding and I will even mention If I fumble somewhere right in the answer section next to the answer.

1. What does the following permission -rwxr-x--x mean?
= D) None of the above cuz user has full access,whereas group and others have only execuatble permission.

2. Which command adds a user terraform to an existing group devops?
= B) usermod -aG devops terraform

3. Which of the following best describes the sudo command?
= B) It allows a user to run commands with elevated privileges

4. After editing /etc/sudoers, you see a syntax error. What should you do?
= C) Press e when prompted to re-edit

5. What does chmod 750 filename mean?
= B) Owner has full access, group has read and execute, others have no access

🔧 Short Practical (Write the exact commands)

6. Create a user named jenkins and assign it to a new group ci.

7. Change ownership of a directory deploy to user ansible and group devops, including all sub-files and directories.

8. Download a file from this URL and save it as myrpm.rpm:
👉 https://rpmfind.net/linux/centos/9-stream/AppStream/x86_64/os/Packages/tree-1.8.0-10.el9.x86_64.rpm

9. Use yum to install the httpd package and start the service.

10. Give passwordless sudo access to the user ansible without modifying /etc/sudoers directly. (Hint: use a file in /etc/sudoers.d/)
