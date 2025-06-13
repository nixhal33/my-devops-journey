    1  history
    2  cd /tm
    3  mkdir -p /tmp/devops/practice/linux
    4  vim /tmp/devops/practice/linux/command.txt
    5  ln /tmp/devops/practice/linux/command.txt /home/vagrant/my-devops-journey/linux/hardlink-forcmd.txt
    6  ll
    7  ls -ltr
    8  cat hardlink-forcmd.txt 
    9  cear
   10  clear
   11  ln -s /tmp/devops/practice/linux/command.txt /home/vagrant/my-devops-journey/linux/softlink-forcmd.txt
   12  ll
   13  cat softlink-forcmd.txt 
   14  cat hardlink-forcmd.txt 
   15  rm -r /tmp/devops/practice/linux/command.txt 
   16  clear
   17  ll
   18  cat softlink-forcmd.txt 
   19  cat hardlink-forcmd.txt 
   20  ls -ltri
   21  clear
   22  cat /etc/hostname 
   23  echo "nixisdevops"> /etc/hostname 
   24  sudo echo "nixisdevops"> /etc/hostname 
   25  ll /etc/hostname 
   26  sudo su
   27  clear
   28  cd
   29  sudo -i
   30  cd root
   31  cd /root
   32  sudo su
   33  clear
   34  ll
   35  cd my-devops-journey/
   36  ll
   37  cd linux/
   38  ll
   39  cat wwe-superstars 
   40  awk '{print $1}' wwe-superstars 
   41  clear
   42  awk '{print}' wwe-superstars 
   43  awk '/Swagger/ {print}' wwe-superstars 
   44  awk -F '{print $1,$3,$5}' /etc/passwd
   45  awk -F':' '{print $1,$3,$5}' /etc/passwd
   46  awk -F':' '{print $1,$3,$5}' /etc/passwd >passwdfield.txt
   47  ll
   48  cat passwdfield.txt 
   49  clear
   50  echo "Hello Bitches..I am Devops Now" 
   51  echo "Hello Bitches..I am Devops Now" | awk '{$1=" 
   52  cat passwdfield.txt 
   53  echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; print $0} 
echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; print $0} 
   54  echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; print $0} 
echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; print $0}'
   55  echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; print $0} 
echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; OFS=" "; print $0}'
   56  echo "Hello Bitches..I am Devops Now" | awk '{$1="vagrant"; print $0} 
echo "Hello vagrantw" | awk '{$1="vagrant"; OFS=" "; print $0}'
   57  clera
   58  clear
   59  echo "Hello Nix" 
   60  echo "Hello Nix" | awk {$2="Nixhal"; print $0}'
   61  echo "Hello Nix" | awk '{$2="Nixhal"; print $0}'
   62  ll
   63  cat passwdfield.txt | awk '{$2="Nixhal"; print $0}'
   64  cat passwdfield.txt | awk '{$2="Nixhal"; OFS="";  print $0}'
   65  cat passwdfield.txt | awk '{$2="Nixhal"; OFS="  ";  print $0}'
   66  CLEAR
   67  clear
   68  cat passwdfield.txt 
   69  cat passwdfield.txt | awk -i '{$2="Nixhal"; OFS="  ";  print $0}'
   70  cat passwdfield.txt | awk '{$2="Nixhal"; OFS="  ";  print $0}' > tmp && mv tmp newpasswdfile.txt
   71  clear
   72  ll
   73  cat newpasswdfile.txt 
   74  clear
   75  man awk
   76  clear
   77  ll
   78  awk 'length($0) >10' wwe-superstars 
   79  cp wwe-superstars backup-wwe.txt
   80  ll
   81  ls -l | awk '{if($NF == 
   82  ls -l | awk '{if($NF == "wwe") print $0;}'
   83  ls -l | awk '{if($9 == "wwe") print $0;}'
   84  ll
   85  cleasr
   86  clear
   87  ls -l | awk '{if($9 == "wwe") print $0; }'
   88  ls -l | awk '{if($9 == "pass") print $0; }'
   89  ls -l | awk '{if($9 == 'wwe') print $0; }'
   90  clear
   91  ll
   92  ls -l | gawk '{print $NF}'
   93  ls -l | awk '{print $NF}'
   94  ls -l | awk '{print $NF}' | wc -l
   95  grep -vi reign wwe-superstars | awk '{print $0}'
   96  grep -vi reign wwe-superstars | awk '{print $1}'
   97  grep -vi reign wwe-superstars | awk '{print $2}'
   98  clear
   99  grep -ic reign wwe-superstars 
  100  grep -nic reign wwe-superstars 
  101  grep -nic reign,lesner wwe-superstars 
  102  grep -nic lesner wwe-superstars 
  103  echo "jimmy uso">> wwe-superstars 
  104  cat wwe-superstars 
  105  echo "jey uso" >> wwe-superstars 
  106  echo "buba ray dudly" >> wwe-superstars 
  107  echo "devon dudly" >> wwe-superstars 
  108  clear
  109  cat wwe-superstars 
  110  grep -nic uso wwe-superstars 
  111  grep -n -i  uso wwe-superstars 
  112  grep -n -i  dud wwe-superstars 
  113  grep dud | awk '{print $1}'
  114  grep -n -i dud | awk '{print $1}'
  115  grep -n -i dudly | awk '{print $1}'
  116  grep  dudly | awk '{print $1}'
  117  grep dudly | awk '{print $1}'
  118  clear
  119  ll
  120  history > Day2-Text-processor-cmds.md
