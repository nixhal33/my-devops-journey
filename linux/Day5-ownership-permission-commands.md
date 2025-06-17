  724  mkdir /opt/devopsdir
  725  ls /opt/
  726  vim /etc/group
  727  useradd morales
  728  vim /etc/group
  729  clear
  730  id morales 
  731  ll
  732  ll devopsdir/
  733  rm @
  734  cd /opt/
  735  ll
  736  ll devopsdir/
  737  chown ansible:devops devopsdir/
  738  ll
  739  clear
  740  ll
  741  chmod g-7 devopsdir/
  742  chmod o-0 devopsdir/
  743  clear
  744  chmod g+7 devopsdir/
  745  chmod g+rwx devopsdir/
  746  ll
  747  chmod o-x devopsdir/
  748  ll
  749  exit
  750  clear
  751  ll
  752  cd devopsdir/
  753  ll
  754  cd ..
  755  ll
  756  chmod o+x devopsdir/
  757  ll
  758  chmod g+wx devopsdir/
  759  ll
  760  chmod g-r devopsdir/
  761  ll
  762  chmod g-w devopsdir/
  763  l
  764  ll
  765  clear
  766  history
  767  su - morales
  768  passwd terraform 
  769  passwd terraform 
  770  clear
  771  su - terraform 
  772  exit
  773  history
  774  history >Day5-ownership-permission-commands.md
