
1. What does the command chmod 750 script.sh do?
= C) Gives full access to the owner, read/execute to group, no access to others

2. Which of the following accurately adds the user ansible to the group devops without removing them from other groups?
= D) usermod -aG devops ansible

3. What does the /etc/shadow file store?
= B) Encrypted passwords and password policies

4. How would you change the group ownership of the folder projects/ to developers only?
= B) chgrp developers projects/

5. What does this symbolic permission command do?
chmod u=rwx,g=rw,o= file1
= C) Sets full permissions for owner, read/write for group, none for others

🔧 Practical Challenges (Do & Paste Results)

6. Create a user ftpuser with no shell access (use /sbin/nologin).
= sudo useradd -s /sbin/nologin ftpuser
  ftpuser:x:1006:1008::/home/ftpuser:/sbin/nologin
 

7. Create a group called automation and add the user jenkins to it.
= sudo groupadd automation && sudo usermod -aG automation jenkins
  ftpuser:x:1008:jenkins
  automation:x:1009:jenkins
 

8. Recursively change ownership of scripts/ to user ansible and group devops.
= sudo chown -R ansible:devops scripts
  -rw-r--r-- 1 ansible devops 0 Jun 19 11:38 testfile1.txt
  -rw-r--r-- 1 ansible devops 0 Jun 19 11:38 testfile2.txt
  -rw-r--r-- 1 ansible devops 0 Jun 19 11:38 testfile3.txt
  -rw-r--r-- 1 ansible devops 0 Jun 19 11:38 testfile4.txt
  -rw-r--r-- 1 ansible devops 0 Jun 19 11:38 testfile5.txt
 

9. Set permissions of file secret.log to: owner=read/write, group=read, others=no access (symbolic or octal).
=  chmod 640 secret.log 
  -rw-r----- 1 root    root   43 Jun 19 11:43 secret.log


10. Create a 100-byte file called placeholder.txt using one command.
= truncate -s 100 placeholder.txt
