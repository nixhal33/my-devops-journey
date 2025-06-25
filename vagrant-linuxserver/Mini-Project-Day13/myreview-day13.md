🧩 Day 13 Automation Review – Hosting Website & WordPress with IaC (Vagrant)

🗓️ Overview

Today’s session marks a **milestone** in my DevOps learning journey — where I moved from manual hosting to **full automation** using **Vagrant** and **shell provisioning**.

This day is divided into **two phases**:
- ✅ Phase 1: Automating a simple website (static template)
- ✅ Phase 2: Automating a full WordPress setup with LAMP stack

Both are powered by **Infrastructure as Code (IaC)** principles — using just a `Vagrantfile`, shell provisioning, and VM configuration.

---

 ⚙️ Phase 1: Website Hosting Automation (Eurolinux)

📦 **VM Used**: `eurolinux/eurolinux`  
🌐 **Network**: Private IP  
💻 **RAM**: 1 GB  
🌐 **Template**: Barista Café (from tooplate)

### 🔧 Provision Script:


###############################################################################
config.vm.provision "shell", inline: <<-SHELL
  yum install httpd -y
  systemctl start httpd
  systemctl enable httpd
  cd /tmp/
  wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
  unzip -o 2137_barista_cafe.zip
  cp -r 2137_barista_cafe/* /var/www/html
  systemctl restart httpd
SHELL

###############################################################################

🚀 Result:

I ran vagrant up, opened the private IP in my browser, and the site was live instantly — no SSH, no manual commands.

✅ Automation Part 1: Success. Clean. Simple. Beautiful.


⚙️ Phase 2: WordPress Hosting Automation (Ubuntu)

📦 VM Used: geerlingguy/ubuntu2004
💻 RAM: 1 GB
🌐 Network: Private IP
🔐 DB Auth: admin as password

🔧 Provision Script:

###############################################################################
config.vm.provision "shell", inline: <<-SHELL
  sudo apt update
  sudo apt install apache2 \
                  ghostscript \
                  libapache2-mod-php \
                  mysql-server \
                  php \
                  php-bcmath \
                  php-curl \
                  php-imagick \
                  php-intl \
                  php-json \
                  php-mbstring \
                  php-mysql \
                  php-xml \
                  php-zip -y

  sudo mkdir -p /srv/www
  sudo chown www-data: /srv/www
  curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www

  cp /vagrant/wordpress.conf /etc/apache2/sites-available/wordpress.conf

  sudo a2ensite wordpress
  sudo a2enmod rewrite
  sudo a2dissite 000-default
  sudo service apache2 reload

  mysql -u root -e "CREATE DATABASE wordpress;"
  mysql -u root -e "CREATE USER wordpress@localhost IDENTIFIED BY 'admin';"
  mysql -u root -e "GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress.* TO wordpress@localhost;"
  mysql -u root -e "FLUSH PRIVILEGES;"

  sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php
  sudo -u www-data sed -i 's/database_name_here/wordpress/' /srv/www/wordpress/wp-config.php
  sudo -u www-data sed -i 's/username_here/wordpress/' /srv/www/wordpress/wp-config.php
  sudo -u www-data sed -i 's/password_here/admin/' /srv/www/wordpress/wp-config.php
SHELL

###############################################################################


🤯 Experience:

  🟡 Challenge: Faced 4+ errors, mostly due to typos.

  ❌ Wrong file path (/etc/...), 'admin' inside '...', PRIVILAGES typo, etc.

  ✅ No logic or syntax errors — the provisioning script was solid, just needed careful proofreading.

🧠 Lesson Learned:

The smallest typos can halt automation. But they also build the sharpest reflexes.

Still, once fixed, I spun up the VM, opened the private IP — and WordPress was fully configured and ready.

💡 Conclusion

This was my first real DevOps automation project — no manual setup, no SSH, justpure IaC. 

It felt like magic seeing the browser show me a fully working site right after v
agrant up.

🔁 From static websites to WordPress with MySQL, this day helped solidify:

1. How provisioning scripts work

2. The importance of small syntax precision

3. Real value of reusable infrastructure with Vagrant

📬 Connect With Me

I'd love to connect, collaborate or just talk tech!

 💼 LinkedIn: linkedin.com/in/nischal-koirala-174066323

 🐙 GitHub: github.com/nixhal33/my-devops-journey

 🐦 X (Twitter): x.com/nischalkoiralaa
