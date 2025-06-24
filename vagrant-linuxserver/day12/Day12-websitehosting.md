vagrant init eurolinux-vagrant/centos-stream-9

vagrant up

vagrant ssh

sudo yum update -y

sudo yum install httpd -y

sudo systemctl start httpd

sudo systemctl enable httpd

cd /var/www/html

wget <template_download_url>

unzip template.zip

rm -rf index.html

cp -r template_folder/* .

sudo systemctl restart httpd

exit (yup, exiting counts when you’re done with style 😎)

# vim: set number:
