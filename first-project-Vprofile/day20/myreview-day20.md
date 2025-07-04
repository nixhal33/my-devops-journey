# 🧠 DevOps Diary – Day 18 (July 4, 2025)
## 💥 "3 VMs Down, 2 to Go – RabbitMQ Runs, MySQL & Memcached Verified, Brain Rebooted"

---

## 🗓️ Real-Life Status:  
The last 6 days? **Absolute madness.**  
Hotel work non-stop. No proper time to sit and study. My progress was in *fragments*.  
I kept trying to squeeze in commands between chaos, and it felt like I was barely holding it all together.

But today?

> I finally got a 5-hour break.  
> I finally got a full work session.  
> And I finally **executed everything I couldn’t finish before**.

---

## ⚙️ What I Achieved Today

### ✅ 1. MySQL Setup on `db01` 🐬

Started with the MySQL (MariaDB) config:

sudo yum update -y
sudo yum install epel-release -y
sudo yum install git mariadb-server -y
sudo systemctl start mariadb
sudo systemctl enable mariadb

Secured the installation:
sudo mysql_secure_installation

Root password: admin123
→ Removed anonymous users
→ Kept remote root login (for lab use)
→ Removed test database
→ Reloaded privilege tables

Created DB and user:
CREATE DATABASE accounts;
GRANT ALL PRIVILEGES ON accounts.* TO 'admin'@'%' IDENTIFIED BY 'admin123';
FLUSH PRIVILEGES;

Restored DB:
git clone -b main https://github.com/hkhcoder/vprofile-project.git
cd vprofile-project
mysql -u root -padmin123 accounts < src/main/resources/db_backup.sql

Checked:
SHOW TABLES;
✔️ Everything looked good.

Firewall config (MySQL runs on 3306):
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --reload

✅ 2. Memcached Setup on mc01 🧠
sudo yum update -y
sudo dnf install epel-release -y
sudo dnf install memcached -y
sudo systemctl start memcached
sudo systemctl enable memcached

Allowed Memcached to listen on all interfaces:
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/sysconfig/memcached
sudo systemctl restart memcached

Then came the “trust but verify” part:

lsof -i :11211  # ✅ Confirmed memcached listening
Because it was already correctly listening, I didn't modify the firewall rules. Efficient, not reckless.

✅ 3. RabbitMQ Setup on rmq01 🐇
sudo yum install epel-release -y
sudo yum install wget -y
dnf -y install centos-release-rabbitmq-38
dnf --enablerepo=centos-rabbitmq-38 -y install rabbitmq-server
sudo systemctl enable --now rabbitmq-server

Configured user and permissions:
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo systemctl restart rabbitmq-server

Opened the port:
firewall-cmd --add-port=5672/tcp
firewall-cmd --runtime-to-permanent

🧠 Port Verification with lsof
Instead of blindly opening firewall ports, I acted like a DevOps grown-up:

lsof -i :3306   # MySQL – already listening ✅
lsof -i :11211  # Memcached – already listening ✅
RabbitMQ needed its port opened, so I did that. But the others? Already set. No need to touch what works.

Trust, verify, and don’t over-tinker.

📊 Current VM Status
VM Name	Service	Port	Status
db01	MySQL	3306	Configured ✅
mc01	Memcached	11211	Configured ✅
rmq01	RabbitMQ	5672	Configured ✅
app01	Tomcat	8080	⏳ Coming Up Next
web01	Nginx	80	⏳ Waiting in the queue

🔭 What’s Next?
Configure Tomcat on app01

Set up Nginx on web01

Final integration + deployment

Prepare for chaos, but hope for logs

🧠 Closing Thought
These last 6 days tested my patience, time management, and tech chops.
But today I finally caught up and executed like I mean it.
DevOps isn’t just about configuring tools — it’s about building yourself through the grind.
