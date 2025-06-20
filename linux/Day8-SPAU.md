    1  history
    2  clear
    3  yum install httpd -y
    4  systemctl status httpd
    5  systemctl restart httpd
    6  systemctl status httpd
    7  clear
    8  ifconfig
    9  systemctl enable httpd
   10  clear
   11  systemctl status httpd
   12  systemctl disable httpd.service 
   13  clear
   14  ll
   15  systemctl status httpd
   16  clear
   17  systemctl status sshd
   18  clear
   19  systemctl is-active sshd
   20  systemctl is-active httpd
   21  clear
   22  cd /etc/systemd/system/multi-user.target.wants/
   23  ll
   24  clear
   25  ll
   26  clear
   27  systemctl status httpd
   28  systemctl enable httpd
   29  clear
   30  systemctl is-enabled httpd
   31  clear
   32  ll
   33  grep service
   34  clear
   35  grep service .
   36  ls httpd
   37  ll
   38  clear
   39  cat httpd.service 
   40  history .
   41  clear
   42  tree .
   43  pwd
   44  clear
   45  pwd
   46   clear
   47  cd ..
   48  ll
   49  cd /home/vagrant/my-devops-journey/linux/
   50  systemctl list-units --type=service
   51  systemctl list-units --type=service | grep httpd
   52  systemctl list-units --type=service | grep nginx
   53  clear
   54  yum install nginx
   55  systemctl status nginx
   56  systemctl start nginx
   57  systemctl reload nginx
   58  systemctl restart nginx
   59  journalctl -xeu nginx.service
   60  clear
   61  lsof -i :80
   62  cler
   63  clear
   64  systemctl status httpd
   65  clear
   66  systemctl status crond
   67  clear
   68  systemctl status firewalld
   69  clear
   70  nmtui
   71  top
   72  clear
   73  top
   74  clera
   75  clear
   76  ps -ef | grep root
   77  ps -ef | grep anisible
   78  clear
   79  ps aux
   80  ps aux | less
   81  clear
   82  ps aux | less
   83  clear
   84  ps -ef | grep httpd
   85  pstree -p | grep http
   86  clear
   87  ps -ef | grep http | grep -v
   88  ps -ef | grep httpd | egrep -v 'grep|color'
   89   kill 4575
   90  ps -ef | grep httpd | egrep -v 'grep|color'
   91  ll
   92  history
   93  systemctl list-units --type=service
   94  systemctl --type=service> experiments/servicelist
   95  ll
   96  ll experiments/
   97  cat experiments/servicelist 
   98  clear
   99  systemctl status httpd
  100  systemctl status httpd >experiments/httpdstatus.txt
  101  clear
  102  systemctl start httpd
  103  systemctl status httpd
  104  clear
  105  ps -ef | grep httpd | egrep -v 'grep|color'
  106  kill -9 6177
  107  ps -ef | grep httpd | egrep -v 'grep|color'
  108  systemctl status httpd
  109  systemctl restart httpd
  110  clear
  111  systemctl status httpd
  112  clear
  113  ll
  114  git add experiments/.
  115  git commit -m "Some process commands output redirection in servicelist files and others"
  116  git push
  117  clear
  118  ll
  119  clear
  120  systemctl status httpd
  121  ps -ef | grep httpd | egrep -v 'grep|color'
  122  kill -9 6391
  123  ps -ef | grep httpd | egrep -v 'grep|color'
  124  clear
  125  sudo su -
  126  clear
  127  history
  128  clear
  129  ps -ef | grep httpd | egrep -v 'grep|color'
  130  ps -ef | grep httpd 
  131  bash -c "sleep 1000  & sleep 1000 & wait"
  132  clear
  133  ps
  134  fg
  135  clear
  136  systemctl start httpd
  137  ps -ef | grep httpd | egrep -v 'grep|color'
  138  kill 6740
  139  ps -ef | grep httpd | egrep -v 'grep|color'
  140  systemctl start httpd
  141  ps -ef | grep httpd | egrep -v 'grep|color'
  142  kill -9 6933
  143  ps -ef | grep httpd | egrep -v 'grep|color'
  144  clear
  145  ll
  146  cd experiments/
  147  clear
  148  nano day8-processkilling.sh
  149  ll
  150  ll | sort
  151  ls sort
  152  ls | sort
  153  clera
  154  clear
  155  ll
  156  chmod +x day8-processkilling.sh 
  157  ./day8-processkilling.sh &
  158  clear
  159  ll
  160  cd ..
  161  ll
  162  cat Readme.md 
  163  clear
  164  cd /var/log
  165  clear
  166  ll
  167  cd httpd/
  168  ll
  169  clear
  170  pwd
  171  cd ..
  172  tar -cvzf httpd_0620.tar.gz httpd/
  173  l
  174  ls -ltr
  175  gile httpd_0620.tar.gz 
  176  file httpd_0620.tar.gz 
  177  clear
  178  ll
  179  mv httpd_0620.tar.gz /home/vagrant/my-devops-journey/linux/experiments/
  180  cd
  181  cd /home/vagrant/my-devops-journey/linux/
  182  cd experiments/
  183  ll
  184  mkdir tar_file
  185  mv httpd_0620.tar.gz tar_file/
  186  ll
  187  cd tar_file/
  188  clear
  189  tar -xzvf httpd_0620.tar.gz 
  190  ll
  191  cd httpd/
  192  ll
  193  cat access_log 
  194  cat error_log 
  195  clear
  196  cd ..
  197  ll
  198  cd tar_file/
  199  ll
  200  tar -xzvf httpd_0620.tar.gz -C /tmp/
  201  cd /tmp/
  202  ll
  203  clear
  204  rpm -qa | grep zip
  205  clear
  206  cd /var/log
  207  ll
  208  cat README 
  209  clear
  210  ll
  211  cat samba/
  212  cd samba/
  213  ll
  214  cd old/
  215  ll
  216  cd ..
  217  zip -r hawkeylog-0620 hawkey.log 
  218  ll
  219  chown vagrant:vagrant hawkeylog-0620.zip 
  220  ll
  221  unzip --help
  222  unzip -help
  223  clear
  224  unzip hawkeylog-0620.zip -C /home/vagrant/my-devops-journey/linux/experiments/
  225  mv hawkeylog-0620.zip /home/vagrant/my-devops-journey/linux/experiments/
  226  cd /home/vagrant/my-devops-journey/linux/experiments/
  227  pwd
  228  clear
  229  ll
  230  mv hawkeylog-0620.zip tar_file/
  231  cd tar_file/
  232  ll
  233  unzip hawkeylog-0620.zip 
  234  ll
  235  tail -10 hawkey.log 
  236  clear
  237  cd
  238  cd /home/vagrant/
  239  ll
  240  history >Day8-SPAU.md
