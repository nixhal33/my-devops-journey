Day 2 Review – Questions

(Write the correct letter with explanation if you can!)

1. What does the command cp -r folder1 folder2 do?
= B) Copies the contents of folder1 into folder2 recursively ie: copy the file recursively w th the folder inside the folder2

2. Which of the following commands correctly moves file.txt from /home/user1 to /tmp directory?
= B) mv /home/user1/file.txt /tmp/

3. What does the file command do?
= C) Displays the type of file (text, directory, binary, etc.)

4. How can you list hidden files in a directory using ls?
= C) ls -a

5. Which of the following is the correct meaning of the wc -l myfile.txt command?
= A) Count total lines in myfile.txt


🔧 Short Practical – Do and paste your exact commands and output snippets:

6. Create a directory practice, go inside it, and create three empty files named a.txt, b.txt, c.txt.
= mkdir practice && cd practice && touch {a..c}.txt
 

7. Create a symbolic link named link_to_a that points to a.txt.
= ln -s a.txt link_to_a
  output : 
	-rw-r--r-- 1 vagrant vagrant 0 Jun 19 11:02 a.txt
	-rw-r--r-- 1 vagrant vagrant 0 Jun 19 11:02 b.txt
	-rw-r--r-- 1 vagrant vagrant 0 Jun 19 11:02 c.txt
	lrwxrwxrwx 1 vagrant vagrant 5 Jun 19 11:03 link_to_a -> a.txt




8. Move b.txt to a new folder called archive, which you create inside practice.
= mv b.txt archive
 full output: [vagrant@centos archive]$ pwd
/home/vagrant/my-devops-journey/linux/week1-progress/day2-experiments/practice/archive
[vagrant@centos archive]$ ll
total 8
-rw-r--r-- 1 vagrant vagrant  9 Jun 19 11:06 a.txt
-rw-r--r-- 1 vagrant vagrant 20 Jun 19 11:08 b.txt


9. Use a command to show only the first 2 lines of /etc/passwd.
= head -2 /etc/passwd

10. Display how many words, lines, and characters are in your a.txt file (combine all three wc options).
= wc a.txt and for different one is wc -lcw b.txt
   1  4 20 b.txt


#########################################################################################################

			MORE COMBINED QUESTION RELATED TO BOTH DAY 2 TO 3

#########################################################################################################



11. What does the following file type symbol indicate: lrwxrwxrwx?
    B) It’s a symbolic link

12. What is the output of this command:
"-------------- cut -d: -f1 /etc/passwd---------" 
C) Lists all usernames on the system

13. Which of the following commands will monitor a file live for changes?
    C) tail -f filename

14. Which command counts only the number of directories inside the current directory (recursively)?
    A) ls -l | wc -l

15. What is the correct usage to search multiple patterns using egrep?
    B) egrep ‘a|b|c’ file

🔧 Practical Tasks – Do & Paste Results

16. Create a folder called lab, enter it, and create 3 files: alpha.txt, beta.txt, and gamma.txt.
=  mkdir lab && cd lab && touch alpha.txt beta.txt gamma.txt

17. Use ln -s to create a symbolic link called link_to_alpha that points to alpha.txt. Then, show the output of ls -l.
= ln -s alpha.txt link_to_alpha
  -rw-r--r-- 1 vagrant vagrant 16 Jun 19 12:33 alpha.txt
  -rw-r--r-- 1 vagrant vagrant  0 Jun 19 12:31 beta.txt
  -rw-r--r-- 1 vagrant vagrant  0 Jun 19 12:31 gamma.txt
  lrwxrwxrwx 1 vagrant vagrant  9 Jun 19 12:32 link_to_alpha -> alpha.txt

18. Use awk with ls -l to print only the filenames (last column).
= ls -l | awk '{print $NF}'
	4
	alpha.txt
	beta.txt
	gamma.txt
	alpha.txt


19. Show how to sort the /etc/passwd file by username in reverse order, then only display unique entries.
= cut -d: -f1-3 /etc/passwd | sort -r | uniq ------------>(i fumbled on this one honestly cuz i forgot like i saw sort and used sort command but instead this -d: -f1 format used used by cut and awk command so i won't repeat same mistakes again)

20. Use sed to replace the word Linux with LINUX inside a file called example.txt, without opening it manually.
= sed -i 's/Linux/LINUX/g' example.txt 
[vagrant@centos lab]$ cat example.txt 
Hello LINUX. I will master you in no time. You just wait and watch.


