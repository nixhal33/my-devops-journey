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
= 251  tail -5 /etc/passwd
  252  clear
  253  sudo useradd jenkins
  254  sudo groupadd ci
  255  grep ci /etc/group
  256  clear
  257  usermod -aG ci jenkins 
  258  sudo usermod -aG ci jenkins 
  259  cat /etc/group -----> practiced my myself.
  output:------> ci:x:1007:jenkins



7. Change ownership of a directory deploy to user ansible and group devops, including all sub-files and directories.
= mkdir -p deploy/androidapps(1..5)
  267  mkdir -p deploy/androidapps{1..5}
  268  ll
  269  cat deploy/
  270  ls -l deploy/
  271  clear
  272  ll
  273  sudo chown -R ansible:devops deploy/
  274  ll
  275  ll deploy/

	output: ll deploy/ 
	drwxr-xr-x 2 ansible devops 6 Jun 19 09:57 androidapps1
	drwxr-xr-x 2 ansible devops 6 Jun 19 09:57 androidapps2
	drwxr-xr-x 2 ansible devops 6 Jun 19 09:57 androidapps3
	drwxr-xr-x 2 ansible devops 6 Jun 19 09:57 androidapps4
	drwxr-xr-x 2 ansible devops 6 Jun 19 09:57 androidapps5



8. Download a file from this URL and save it as myrpm.rpm:
👉 https://rpmfind.net/linux/centos/9-stream/AppStream/x86_64/os/Packages/tree-1.8.0-10.el9.x86_64.rpm
= curl https://rpmfind.net/linux/centos/9-stream/AppStream/x86_64/os/Packages/tree-1.8.0-10.el9.x86_64.rpm -o myrpm.rpm


9. Use yum to install the httpd package and start the service.
= sudo yum install httpd 
  sudo systemctl status httpd
  sudo systemctl start httpd 


10. Give passwordless sudo access to the user ansible without modifying /etc/sudoers directly. (Hint: use a file in /etc/sudoers.d/)
= First, I became root ie: sudo -i and went to this /etc/sudoers.d/ directory and copied one of the file inside there and changed the name from group to ownername and i know it's group cuz there's % before the name and so on : ansible 	ALL=ALL 	NOPASSWD: NO somethat like this and saved it and switched to ansible and tried to access the root privilage and i got it. so this conclude day 2 task also. 
