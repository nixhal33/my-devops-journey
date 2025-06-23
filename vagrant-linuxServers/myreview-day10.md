🚀 Day 10: Exploring Vagrant – IP, RAM & CPU Configuration

Today’s goal was to deepen my understanding of the Vagrantfile, especially focusing on how IP addresses, RAM, and CPU are managed in virtual machines (VMs).
🔁 Quick Recap

Started with a quick revision of basic Vagrant commands I already practiced back on Day 1 and 2. While reviewing, I also learned that:

    Files or directories starting with a dot (.), like .secret-folder, are hidden in Linux systems. ✅

📂 Deep Dive into the Vagrantfile

I went through each line of the Vagrantfile, commenting on things I understood and observing where the actual provisioning logic kicks in. It’s a solid habit to re-read configuration files — every line teaches something.

Here’s what stood out:
🔐 Port Forwarding

    I can define custom forwarded ports for added control over incoming/outgoing access — a simple but powerful security technique.

    It helps restrict or allow specific traffic to and from the VM.

🌉 Bridged & Private Networks

    I explored both bridged networking and private networking setups.

    Bridged networking creates a virtual network device that connects the VM to the same LAN as the host machine.

    Private networking allows me to assign a static IP to my VM — but it must not overlap with my host machine’s IP.

💡 Flashback moment: I remembered tweaking the network adapter in VirtualBox manually to a bridged adapter — and now it all makes sense how Vagrant automates this too.
🧠 Realization: Static vs Dynamic IP

    Bridged networks typically use dynamic IPs (changeable).

    Private networks let me set a static IP (constant), unless changed manually.

⚙️ VM Resource Tuning

I increased my VM’s RAM and CPU count directly through the Vagrantfile. After making the changes, I ran:

vagrant reload

But encountered an error: ❌ Invalid IP range!

Turns out I had used an out-of-range IP like 192.168.25.30, so I corrected it to something valid like 192.168.56.20 and everything worked perfectly after that!
📌 Interface Selection Prompt

After fixing the IP, I was prompted:

    “Which interface should the network bridge to?”

I learned this happened because my Vagrantfile didn’t specify a bridge adapter, and Vagrant asked me to choose. Selected 1 and things ran smoothly.

💻 Inside the VM, I checked:

    RAM ✅ (as configured)

    CPU ✅ (as configured)

    Network interfaces ✅ (understood the difference between enp0s3 = NAT, enp0s8 = Private, enp0s9 = Bridged)

✅ Reflection

Even though today wasn’t super deep, it was productive:

    Debugged networking issues

    Reviewed IP ranges

    Improved my configuration accuracy

    Strengthened my understanding of networking in virtualization

This journey is really helping my DevOps mindset evolve.
🔧 Bonus Insight

All of this came together without using AI tools today — just troubleshooting, logs, logic, and my growing instincts from Day 1 to Day 10. That moment of solving the Apache port conflict on my own? Felt amazing. 💪

📚 Tomorrow, I’m diving deeper into provisioning and advanced Vagrant usage.

Thanks for reading!

🧠 Want to follow my DevOps learning path?
Check out my GitHub repo 👉 github.com/nixhal33/my-devops-journey

🔗 Let's connect on LinkedIn: [https://www.linkedin.com/nischal-koirala-174066323]  

#DevOps #Vagrant #Linux #Virtualization #Networking #LearningInPublic #100DaysOfDevOps
