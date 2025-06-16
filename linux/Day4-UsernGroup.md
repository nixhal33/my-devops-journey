  542  cat testfile 
  543  setfacl testfile 
  544  getfacl testfile 
  545  clear
  546  useradd ansible
  547  useradd jenkins kubernetes docker terraform
  548  clear
  549  useradd terraform
  550  ll
  551  setfacl -m u:rwx,g::rw,o::xr testfile 
  552  setfacl u:rwx,g::rw,o::xr testfile 
  553  setfacl -m u:rwx,g::rw,o::xr testfile 
  554  clear
  555  setfacl -x u:nix testfile 
  556  setfacl -b u:nix testfile 
  557  setfacl -b  testfile 
  558  ll
  559  clear
  560  touch testfile
  561  ll
  562  cat testfile 
  563  tail -4 /etc/passwd
  564  useradd kubernetes
  565  clear
  566  grep kubernetes /etc/passed
  567  grep kubernetes /etc/passwd
  568  ll testfile 
  569  echo "I love Mustang,Manang,Olangchunggola">> testfile 
  570  cat testfile 
  571  ll testfile 
  572  truncate 30 testfile 
  573  truncate -s 30 testfile 
  574  cat testfile 
  575  clear
  576  cat testfile 
  577  clear
  578  cat testfile 
  579  ll testfile 
  580  truncate -s 100 testfile 
  581  cat testfile 
  582  ll testfile 
  583  vi testfile 
  584  tail -5 /etc/passwd
  585  history
  586  useradd jenkins
  587  tail -5 /etc/passwd
  588  id jenkins
  589  id terraform
  590  id ansible
  591  groupadd devops 
  592  clear
  593  usermod -aG ansible terraform jenkins kubernetes 
  594  usermod -aG devops ansible terraform jenkins kubernetes 
  595  usermod -aG devops ansible 
  596  usermod -aG devops terraform 
  597  groupadd devopsjourney
  598  usermod -aG devopsjourney kubernetes 
  599  usermod -aG clear
  600  clea
  601  rclear
  602  clear
  603  tail -5 /etc/passwd
  604  usermod -aG devopsjourney jenkins 
  605  clear
  606  tail -5 /etc/passwd
  607  id ansible 
  608  id kubernetes 
  609  id terraform 
  610  id jenkins 
  611   grep devops /etc/group && grep devopsjourney /etc/group
  612  clear
  613  vi /etc/group
  614  clear
  615  id kubernetes 
  616  passwd ansible 
  617  passwd jenkins 
  618  clear
  619  passwd terraform
  620  su - kubernetes 
  621  su ansible
  622  exit
  623  clear
  624  history
  625  clear
  626  su - jenkins
  627  clear
  628  last
  629  last 
  630  clear
  631  last | head -5
  632  rpm -qa 
  633  clear
  634  rpm -qa 
  635  rpm -qa | grep lsof
  636  clear
  637  lsof -u root 
  638  clear
  639  lsof -u vagrant 
  640  clear
  641  lsof -u terraform 
  642  lsof -u ansible
  643        userdel -r jenkins 
  644  ls /home/
  645  userdel -r kubernetes 
  646  ls /h
  647  ls /home/
  648  groupdel -r devopsjourney 
  649  groupdel  devopsjourney 
  650  clear
  651  grep devopsjour /etc/group
  652  tail -10 /etc/group
  653  ll
  654  ls /home
  655  clear
  656  history >/home/vagrant/my-devops-journey/linux/Day4-User&group.md
  657  history >/home/vagrant/my-devops-journey/linux/Day4-UsernGroup.md
