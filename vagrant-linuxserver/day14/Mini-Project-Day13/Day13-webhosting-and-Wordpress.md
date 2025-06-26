1. mkdir wordpress
2. cd wordpress
3. vagrant init ubuntu/bionic64
4. vagrant init geerlingguy/ubuntu2004
5. vagrant init eurolinux/eurolinux
6. vagrant up
7. vagrant ssh
8. vagrant reload
9. vagrant destroy -f
10. sudo apt update
11. sudo apt install apache2 -y
12. sudo apt install mysql-server -y
13. sudo apt install php -y
14. sudo apt install ghostscript libapache2-mod-php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip -y
15. sudo mkdir -p /srv/www
16. sudo chown www-data: /srv/www
17. curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www
18. cp /vagrant/wordpress.conf /etc/apache2/sites-available/wordpress.conf
19. sudo a2ensite wordpress
20. sudo a2enmod rewrite
21. sudo a2dissite 000-default
22. sudo service apache2 reload
23. mysql -u root -e "CREATE DATABASE wordpress;"
24. mysql -u root -e "CREATE USER wordpress@localhost IDENTIFIED BY 'admin';"
25. mysql -u root -e "GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress.* TO wordpress@localhost;"
26. mysql -u root -e "FLUSH PRIVILEGES;"
27. sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php
28. sudo -u www-data sed -i 's/database_name_here/wordpress/' /srv/www/wordpress/wp-config.php
29. sudo -u www-data sed -i 's/username_here/wordpress/' /srv/www/wordpress/wp-config.php
30. sudo -u www-data sed -i 's/password_here/admin/' /srv/www/wordpress/wp-config.php
31. yum install httpd -y
32. systemctl start httpd
33. systemctl enable httpd
34. cd /tmp/
35. wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
36. unzip -o 2137_barista_cafe.zip
37. cp -r 2137_barista_cafe/* /var/www/html
38. systemctl restart httpd

