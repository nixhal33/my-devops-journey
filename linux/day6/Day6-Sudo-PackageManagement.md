vagrant
109  whoami
  110  sudo yum install git -y
  111  clear
  112  yum install git -y
  113  useradd test
  114  sudo useradd test
  115  sudo -i

ROOT
349  su - ansible
  350  passwd ansible
  351  su - ansible
  352  clear
  353  visudo
  354  ls -l /etc/sudoers
  355  visudo
  356  su - ansible
  357  visudo
  358  su - ansible
  359  clear
  360  ls -l /etc/sudoers
  361  visudo
  362  cd /etc/sudoers.d/
  363  ls
  364  cat vagrant
  365  cp vagrant devops
  366  vim devops
  367  cat 
  370  tree /var/log
  371  curl https://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/tree-1.6.0-10.el7.x86_64.rpm -o tree-1.6.0-10.el7.x86_64.rpm
  372  ls
  373  rpm -ivh tree-1.6.0-10.el7.x86_64.rpm
  374  tree /var/log/
  375  clear
  376  curl https://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/httpd-2.4.6-95.el7.centos.x86_64.rpm -o httpd-2.4.6-95.el7.centos.x86_64.rpm
  377  ls
  378  rpm -ivh httpd-2.4.6-95.el7.centos.x86_64.rpm
  379  clear
  380  rpm --help
  381  clear
  382  rpm -qa
  383  clear
  384  rpm -qa | grep tree
  385  rpm -e tree-1.6.0-10.el7.x86_64
  386  rpm -qa | grep tree
  387  tree
  388  clear
  389  cd /etc/yum.repos.d/
  390  ls
  391  cat CentOS-Base.repo
  392  clear
  393  yum search httpd
  394  cd
  395  clear
  396  yum install httpd
  397  clear
  398  yum remove httpd
  399  yum install httpd
  400  clear
  401  yum search nginx
  402  yum install nginx
  403  clear
  404  yum install jenkins
  405  ls /etc/yum.repos.d/
  406  clear
  407  yum install wget -y
  408  sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
  409  cat /etc/yum.repos.d/jenkins.repo
  410  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
  411  yum install jenkins java-1.8.0-openjdk-devel -y
  412  yum upgrade
