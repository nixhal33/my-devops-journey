    1  echo '' > /etc/motd
    2  clear
    3  whoami
    4  apt update
    5  yum update 
    6  clear
    7  ls
    8  cat anaconda-ks.cfg 
    9  clear
   10  l
   11  ll
   12  cat original-ks.cfg 
   13  exit
   14  cler
   15  clear
   16  yum install clera
   17  ll
   18  l
   19  clear
   20  ll
   21  touch devopsfile{1..10}.txt
   22  ll
   23  cat devopsfile9.txt 
   24  echo "Football is my favorite game in the world" >>devopsfile9.txt 
   25  clera
   26  clear
   27  cat devopsfile9.txt 
   28  cp devopsfile9.txt dev
   29  ll
   30  clear
   31  ll
   32  ls -ltr
   33  cd dev
   34  cat dev
   35  rm dev
   36  ll
   37  clear
   38  cp devopsfile9.txt devops/
   39  cp devopsfile9.txt devops/
   40  ll
   41  rm -rf *.txt
   42  l
   43  ll
   44  clear
   45  cd /home/vagrant/
   46  ll
   47  touch testfile{1..10}.txt
   48  ll
   49  cp testfile10.txt dev/
   50  mkdir dev
   51  cp testfile10.txt dev/
   52  clear
   53  ls dev/
   54  cd /tmp/
   55  ll
   56  clear
   57  ~
   58  cd ~
   59  ll
   60  exit
   61  yum install vim
   62  yum auto-remove
   63  dnf install auto-remove
   64  yum install 'dnf-command(auto-remove)'
   65  clear
   66  vim benkasot
   67  ll
   68  cat benkasot 
   69  mv benkasot /home/vagrant/
   70  ll
   71  cd /home/vagrant/
   72  ll
   73  exit
   74  clear
   75  ll
   76  exit
   77  ll
   78  mkdir devopsdir
   79  lll
   80  ll
   81  file devopsdir/
   82  echo "Nepal is a beautiful country." >nepal.txt
   83  ll
   84  file nepal.txt 
   85  cd /bin/
   86  ll
   87  file zipsplit 
   88  file zsoelim 
   89  file yum
   90  clear
   91  file yum
   92  ll yum
   93  cd /dev/
   94  ll
   95  file vcsu6
   96  ll
   97  clear
   98  mkdir /opt/dev/devops/test
   99  clear
  100  mkdir /tmp/dev/ops/testfile
  101  mkdir -p /tmp/dev/ops/testfile
  102  cd /tmp/
  103  ls -ltr
  104  cd dev/ops/testfile/
  105  ll
  106  pwd
  107  clear
  108  vim commands.txt
  109  cd
  110  ll
  111  clea
  112  clear
  113  ll
  114  ln -s /tmp/dev/ops/testfile/commands.txt 
  115  ll
  116  cat commands.txt 
  117  clear
  118  ll
  119  cat commands.txt 
  120  clear
  121  ll
  122  cd devopsdir/`
  123  cd devopsdir/
  124  ll
  125  ln -h /tmp/dev/ops/testfile/commands.txt 
  126  ll
  127  cd ..
  128  ll
  129  rm commands.txt 
  130  ll
  131  clear
  132  cd devopsdir/
  133  cd /tmp/dev/ops/testfile/
  134  ll
  135  ln -s commands.txt /root/devopsdir/
  136  ll
  137  cd 
  138  ll
  139  cd devopsdir/
  140  ll
  141  cat commands.txt 
  142  clear
  143  cat commands.txt 
  144  cd ..
  145  ll
  146  cd devopsdir/
  147  ll
  148  nano commands.txt 
  149  cat commands.txt 
  150  rm commands.txt 
  151  cd /tmp/dev/ops/testfile/
  152  ll
  153  ln -s commands.txt basic-commands
  154  ll
  155  cat basic-commands 
  156  clear
  157  rm basic-commands 
  158  ll
  159  ln -s commands.txt /root/black
  160  cd
  161  ll
  162  cd /tmp/dev/ops/testfile/
  163  mv commands.txt /root/
  164  ll
  165  cd 
  166  ll
  167  cat black 
  168  unlink black 
  169  ll
  170  vim /etc/hostname 
  171  clear
  172  hostname centos.devops.in
  173  clear
  174  log out
  175  exit
  176  clear
  177  pwd
  178  sudo -i
  179  exit
  180  clear
  181  l
  182  ll
  183  cat nepal.txt 
  184  sed 's/Nepal/Japan/s' nepal.txt 
  185  sed '/Nepal/Japan/s' nepal.txt 
  186  sed 's/Nepal/Japan/' nepal.txt 
  187  sed -i 's/Nepal/Japan/' nepal.txt 
  188  cat nepal.txt 
  189  clear
  190  ll
  191  grep SELINUX original-ks.cfg 
  192  grep SELINUX anaconda-ks.cfg 
  193  grep -i selinux original-ks.cfg 
  194  grep -i selinux anaconda-ks.cfg 
  195  grep firewall anaconda-ks.cfg 
  196  grep fi anaconda-ks.cfg 
  197  clear
  198  grep -i fire anaconda-ks.cfg 
  199  grep -ivR fire anaconda-ks.cfg 
  200   clear
  201  grep -i firewall anaconda-ks.cfg 
  202  grep -i firewall < anaconda-ks.cfg >anacondaoutput.txt 
  203  ll
  204  cat anacondaoutput.txt 
  205  clear
  206  grep Wall < anaconda-ks.cfg >>anacondaoutput.txt 
  207  ll
  208  cat anacondaoutput.txt 
  209  clear
  210  grep Wall anaconda-ks.cfg 
  211  grep -i Wall anaconda-ks.cfg 
  212  grep -i firewall * anaconda-ks.cfg 
  213  grep -iR firewall * anaconda-ks.cfg 
  214  ll
  215  grep -R firewall * anaconda-ks.cfg 
  216  grep -R firewall *
  217  grep -iR firewall *
  218  grep -iR firewall * > devopsdir/all-lines-related-to-firewall.txt
  219  grep -iR firewall * > devopsdir/alldata
  220  grep -iR firewall * > devopsdir
  221  grep -iR firewall * > newdata
  222  clear
  223  cat anaconda-ks.cfg 
  224  cat anaconda-ks.cfg | wc -l
  225  cat anaconda-ks.cfg 
  226  vi anaconda-ks.cfg 
  227  clear
  228  grep -iR SELINUX /etc/* >devopsdir/allselinuxonly.txt 
  229  clear
  230  grep -iR SELINUX /etc/* >selinuxdata 
  231  grep -iR SELINUX /etc/* 
  232  clear
  233  grep -iR SELINUX /etc/* >> /root/selinuxdata.txt
  234  ll
  235  rm newdata 
  236  rm selinuxdata
  237  ll
  238  clear
  239  cat selinuxdata.txt 
  240  grep -i permissive selinuxdata.txt 
  241  vi /etc/selinux/config 
  242  CLEAR
  243  clear
  244  ll
  245  cat selinuxdata.txt 
  246  clear
  247  cd devopsdir/
  248  ll
  249  rm -r alldata all-lines-related-to-firewall.txt 
  250  ll
  251  rm -rv all-lines-related-to-firewall.txt 
  252  clear
  253  ll
  254  cat allselinuxonly.txt 
  255  clear
  256  ll
  257  du -sh allselinuxonly.txt 
  258  du -h anaconda-ks.cfg 
  259  du -h allselinuxonly.txt 
  260  clear
  261  du -sh *
  262  cd ..
  263  du -sh devopsdir/
  264  clear
  265  less selinuxdata.txt 
  266  clear
  267  head -10 selinuxdata.txt 
  268  tail -10 selinuxdata.txt 
  269  jkl
  270  clear
  271  ll
  272  more original-ks.cfg 
  273  less original-ks.cfg 
  274  clear
  275  tail -n selinuxdata.txt 
  276  tail -2 selinuxdata.txt 
  277  cd /var/log/
  278  ll
  279  cat messa
  280  less messages 
  281  clear
  282  ls
  283  cat README 
  284  clera
  285  clear
  286  yum install clera
  287  ll
  288  ls
  289  tail -f dnf.log 
  290  clear
  291  tail -f messages 
  292  clear
  293  tail -f messages 
  294  cut -c1 messages 
  295  cut -c1 messages | head -5
  296  cut -c3 messages | head -5
  297  more messages 
  298  clear
  299  cut -c1-3,6-9
  300  cut -c1-3,6-9 messages 
  301  clear
  302  a=10
  303  $a = 10
  304  clear
  305  cd
  306  ll
  307  vim wwe-superstars
  308  ll
  309  cat wwe-superstars 
  310  clear
  311  cut -c1-5 wwe
  312  cut -c1-5 wwe-superstars 
  313  clear
  314  cut -c1-5,6-9 wwe-superstars 
  315  clear
  316  cut -c1-5,6-9,10-15,6-19 /var/log/messages 
  317  cut -b1-5,6-9,10-15,6-19 /var/log/messages 
  318  cut -b1-5 wwe-superstars 
  319  cut -b1 wwe-superstars 
  320  cut -b-1 wwe-superstars
  321  clear
  322  cut -d: -f1 /etc/passwd
  323  clear
  324  cut -d: -f5 /etc/passwd
  325  clear
  326  awk -F' :'  ' {print $1}' /etc/passwd
  327  clear
  328  clear -F':' '{print $1}
  329  clear -F':' '{print $1}' /etc/passwd
  330  clear -F' :' '{print $1}' /etc/passwd
  331  clear --F' :' '{print $1}' /etc/passwd
  332  clear
  333  cut -d: -f 1 /etc/passwd
  334  cut -d: -f1 /etc/passwd
  335  cut -d: -f8 /etc/passwd
  336  cut -d: -f7 /etc/passwd
  337  cut -d: -f6 /etc/passwd
  338  clear
  339  cut -d: -f1 /etc/passwd
  340  cut -d: -f3 /etc/passwd
  341  cut -d: -f1-4 /etc/passwd
  342  cut -d: -f1-8 /etc/passwd
  343  cut -d: -f1-2,3-5 /etc/passwd
  344  cut -d: -f1-2,6-8 /etc/passwd
  345  cut -d: -f1-2,4-5 /etc/passwd
  346  clear
  347  ls -l 
  348  ls -l | cut -c1-4
  349  ls 
  350  clera
  351  clear
  352  ls | cut -c1-5
  353  clear
  354  head -3 /etc/passwd 
  355  head -3 /etc/passwd | cut -d: -f3-7
  356  tail -3 /etc/passwd | cut -d: -f3-7
  357  tail -3 /etc/passwd | cut -d: -f3-5
  358  awk -F':' '{print $1}' /etc/passwd
  359  awk -F':' '{print $1-3}' /etc/passwd
  360  awk -F':' '{print $1,$2,$5}' /etc/passwd
  361  awk {print $1} /etc/passwd
  362  awk '{print $1}' /etc/passwd
  363  awk -F'::' '{print $1}' /etc/passwd
  364  awk -F':' '{print $1}' /etc/passwd
  365  awk -F':' '{print $2}' /etc/passwd
  366  awk -F':' '{print $5}' /etc/passwd
  367  clear
  368  ll
  369  cat wwe-superstars 
  370  exit
  371  clear
  372  cp /root/wwe-superstars .
  373  ll
  374  chown vagrant:vagrant wwe-superstars 
  375  ll
  376  mv wwe-superstars my-devops-journey/
  377  mv my-devops-journey/wwe-superstars my-devops-journey/linux/
  378  clear
  379  awk '{print $1}' /etc/passwd
  380  ll
  381  cd my-devops-journey/linux/
  382  clear
  383  ll
  384  rm softlink-forcmd.txt 
  385  ll
  386  clear
  387  ll
  388  awk '{print $1}' wwe-superstars 
  389  awk '{print $1,$2}' wwe-superstars 
  390  awk '{print $2}' wwe-superstars 
  391  ls -ltri | awk '{print $1,$3,$5}' 
  392  ls -ltri
  393  clear
  394  ls -ltri | awk '{print $NF}' 
  395  ll
  396  awk '/Roman/ {print}' wwe-superstars 
  397  awk '/brock/ {print}' wwe-superstars 
  398  awk 'i/brock/ {print}' wwe-superstars 
  399  awk -i '/brock/ {print}' wwe-superstars 
  400  awk '/Brock/ {print}' wwe-superstars 
  401  clear
  402  awk '/vagrant/ {print}' /etc/passwd
  403  clear
  404  ll
  405  git add .
  406  git commit -m "Day 2 of practicing linux going pretty good"
  407  git push
  408  git config --global --edit
  409  git commit --amend --reset-author
  410  git add .
  411  git commit "Day 2 practicing linux for my devops journey"
  412  git commit -m "Day 2 practicing linux for my devops journey"
  413  git push
  414  clear
  415  git --reset
  416  git reset
  417  clear
  418  git status
  419  git push
  420  cd ..
  421  git psh
  422  git push
  423  CLEAR
  424  clear
  425  ll
  426  exit
  427  cd 
  428  ls | grep host
  429  ll
  430  cd /
  431  ll
  432  cd /r
  433  cd /root/
  434  ll
  435  ls | grep host
  436  ls | grep ho
  437  ls | grep ho*
  438  ls | grep firewall
  439  clear
  440  grep firewall 
  441  grep -vi firewall anaconda
  442  grep -vi firewall anaconda-ks.cfg 
  443  grep -i firewall anaconda-ks.cfg 
  444  clear
  445  cd /etc/
  446  ls | grep host
  447  tail /var/log messages | grep -i vagrant
  448  clear
  449  ll
  450  cat logclear
  451  clear
  452  cd 
  453  tail /var/log/ messages
  454  clear
  455  cat /var/log/messages 
  456  clear
  457  tail -f /var/log/messages | grep -i vagrant
  458  tail -20 /var/log/messages | grep -i vagrant
  459  tail -20 /var/log/messages | grep -vi vagrant
  460  clear
  461  rpm -qa | grep python3
  462  clear
  463  free -m | grep -i mem
  464  ifconfig | grep inet
  465  tail /var/log/messages 
  466  clear
  467  dnf autoremove
  468  find /etc/ -name hos*
  469  find /etc/ -name ho*
  470  clear
  471  find / -name ho*
  472  rpm -qa | grep locate
  473  updatedb
  474  locate wwe-superstart
  475  updatedb
  476  locate wwe
  477  locate ww
  478  clear
  479  cd /
  480  ll
  481  find / -name wwe*
  482   cd ..
  483  ll
  484  cd /home/vagrant/
  485  ll
  486  cd my-devops-journey/
  487  cd linux/
  488  ll
  489  clear
  490  history >Day3-More-advaned-Textprocessors.nmd
