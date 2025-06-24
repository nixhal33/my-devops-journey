# From now one I will put my commands that i practiced more organized and structured and everything even the config files will be posted in this md file.
# Thank you for reading!

# Vagrant essentials
vagrant init
vagrant up
vagrant ssh
vagrant reload
vagrant halt
vagrant destroy
vagrant reload --provision
vagrant provision
vagrant status

# Set up custom synced folder (after editing Vagrantfile)
mkdir -p ~/Desktop/Devops/synced-dir

# Test synced folder
touch ~/Desktop/Devops/synced-dir/test.txt
rm ~/Desktop/Devops/synced-dir/test.txt

# Sample inline provisioning block (added in Vagrantfile)
# config.vm.provision "shell", inline: <<-SHELL
#   apt update
#   apt install -y apache2
#   mkdir /opt/Provisioned-directory
#   free -m
#   uptime
#   ps -ef
#   cat /etc/os-release
# SHELL

# Bash script creation
nano myscript.sh
chmod +x myscript.sh
./myscript.sh

# Sample script content (for reference, not command)
# #!/bin/bash
# echo "Welcome to bash Scripting"
# echo " and Hello I am Nischal Koirala "
# sudo apt update
# echo "System updation and related dependencies shown successfully."

# Alias for quick vagrant usage
alias startvagrant='cd ~/Desktop/Devops/vagrant-linuxserver && vagrant up && vagrant ssh'
alias stopvagrant='cd ~/Desktop/Devops/vagrant-linuxserver && vagrant halt'

# Git troubleshooting
git status
git add .
git commit -m "Day 11: synced folders and provisioning"
git push

# Fix if remote has changes
git pull --rebase

# If rebase fails due to unstaged changes
git stash
git pull --rebase
git stash pop

# Git branch management
git checkout -b vagrant-LinuxServers    # if new
git checkout vagrant-LinuxServers       # if already exists
git branch
git push -u origin vagrant-LinuxServers

