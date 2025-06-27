    1  apt install vagrant
    2  ping google.com
    3  pwd
    4  exit
    5  ls
    6  cd home
    7  cd /home/
    8  ls
    9  cd ubuntu/
   10  ls
   11  exit
   12  clear
   13  ls
   14  cat hostname 
   15  vim hostname 
   16  clear
   17  reboot
   18  clear
   19  pwd
   20  hostname
   21  whoami
   22  cat /etc/os-release 
   23  clear
   24  useradd -r devops
   25  cat /etc/passwd
   26  clear
   27  userdel -r devops 
   28  cat /etc/passwd
   29  clear
   30  useradd devops
   31  su - devops 
   32  userdel devops 
   33  clear
   34  cat /etc/passwd
   35  clear
   36  adduser devops
   37  clear
   38  id devops 
   39  visudo
   40  export EDITOR=vim
   41  visudo
   42  apt install tree
   43  snap install tree
   44  clear
   45  tree /etc/
   46  clear
   47  curl http://ftp.de.debian.org/debian/pool/main/t/tree/tree_2.1.0-1_arm64.deb -o tree
   48  ll
   49  dpkg -i tree
   50  clear
   51  rm tree 
   52  ll
   53  wget http://ftp.de.debian.org/debian/pool/main/t/tree/tree_2.1.0-1_arm64.deb
   54  ll
   55  curl -o http://ftp.de.debian.org/debian/pool/main/t/tree/tree_2.1.0-1_arm64.deb new
   56  curl http://ftp.de.debian.org/debian/pool/main/t/tree/tree_2.1.0-1_arm64.deb -o new
   57  clear
   58  ll
   59  rm new
   60  dpkg -i tree_2.1.0-1_arm64.deb 
   61  clear
   62  dpkg -i tree_2.1.0-1_arm64.deb 
   63  clear
   64  dpkg -l | grep tree
   65  dpkg -l | grep ubu
   66  clear
   67  apt-get install tree
   68  snap install tree
   69  refresh
   70  snap help refresh
   71  clear
   72  history
   73  tree 
   74  tree /opt
   75  tree /
   76  clear 
   77  cd /etc/apt/
   78  ll
   79  cat sources.list
   80  clear
   81  apt update list
   82  apt update
   83  apt autoremove
   84  clear
   85  apt install apache2
   86  apt install apache2 -y
   87  clear
   88  systemctl status apache2.service 
   89  clear
   90  dpkg -l | grep apache2
   91  apt remove apache2
   92  clear
   93  history >todayhistory.txt

