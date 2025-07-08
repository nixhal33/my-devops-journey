🧠 DevOps Diary – Day 22 (July 8, 2025)
⚠️ “When You’ve Tried Everything... Then Realize You Missed the Obvious”
🗓️ Status:
Today was one of those days.

I pushed hard — trying to track down why the Nginx frontend wasn’t showing anything.
Everything was pinging. Every service was running.
Nginx was responding with 404, but I couldn't figure out why.

🔍 What I Did:
Re-setup each and every vm took me 1.5 hours.

Triple-checked my reverse proxy config

Verified that Nginx was enabled, running, and listening

Confirmed that web01 could ping app01

Cleaned up Nginx default site and made sure vproapp was linked

Inspected every log, every curl output, every path

It all seemed right...
Until it hit me.

🧨 The Culprit?
Tomcat on app01 was up — but not serving anything.
A quick curl http://app01:8080 showed a big, blank nothing.

That’s it. That was the problem the whole time.

Everything looked like it was working...
But the app deployment on Tomcat wasn’t there — no HTML, no response, no frontend.

⚙️ What's Next
Tomorrow, I’ll:

Rebuild and redeploy the WAR file as ROOT.war

Make sure Tomcat extracts and serves it properly

Confirm it responds at /

Verify Nginx picks it up and delivers it to the browser

🧠 Realization of the Day:
"Sometimes it’s not the big things that fail.
It’s the one tiny assumption that breaks everything."

⌛ Why I’m Pausing Here:
Honestly — time was tight today.
Workload’s been heavy, and my focus window was short.
Rather than rush and risk sloppy fixes, I’ve documented the issue and will handle it with a fresh brain tomorrow.

🔗 Links
📁 Project Repo: github.com/nixhal33/my-devops-journey
📬 Connect with me:

LinkedIn: linked.com/in/nischal-koirala-174066323

Twitter (X): x.com/nischalkoiralaa

Thanks for following the grind.
Tomorrow’s the fix day — let’s get it done 💪
