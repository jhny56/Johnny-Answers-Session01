# Linux Questions
## Answer the following questions (brief answers, not need for huge paragraphs)
1. Explain the difference between `ls -l` and `ls -a`. What specific information does each option provide?
 ls -a :
.  ..  MyRep  Robotics-Session01

ls -l :
total 8
drwxrwxr-x 3 robot robot 4096 Jul  2 11:54 MyRep
drwxrwxr-x 3 robot robot 4096 Jul  2 11:28 Robotics-Session01

we can see these 2 are directories, and their permissions

2. Describe a scenario where using `mkdir` might fail and how to handle such a failure programmatically.
it might fail if we are creating a directory and we don't have permission? or if we confuse it with trying to create a file.

3. How can you use the `cat` command to concatenate the contents of two files into a new file? Provide the command syntax.
cat test.txt >> test2.txt

4. What is the primary difference between the `cat` and `touch` commands when it comes to file creation?
cat print the data, touch create a new file.

5. Explain the use of wildcards with the `cp` command to copy multiple files at once. Provide an example.
cp test1.txt test2.txt /directory... ?

6. How can the `cd` command be used to navigate to the parent directory of the current directory?
cd .. to get to the previous directory

7. Describe the behavior of the `mv` command when the destination file already exists. How can you avoid accidental overwrites?
it will overwrite the new file. if its has the same name.

8. What is the significance of the `pwd` command in scripting, and how can its output be utilized in a script?
to check if we are in a certain directory that we want our script to execute

9. Explain the differences between the `whereis`, `whatis`, and `which` commands. When would you use each one?
whereis give us the location of a command
whatis is like a manual or --help
which firefox (gets the directory of the executable command)
/usr/bin/firefox

whereis firefox (gets every directory that have firefox)
firefox: /usr/bin/firefox /etc/firefox /snap/bin/firefox


10. How does the `man` command differ from the `info` command in terms of the structure and depth of documentation provided?
man seems to be more structured. but both have alot of info (tried it on ls)

11. What does the `grep` command do, and how can it be used to search for a specific pattern in all text files within a directory?
grep is like a find command, we can use it with piping, cat test.txt | grep "inmind"

12. Describe the output of the `head` and `tail` commands when used without any options. How can you customize the number of lines displayed?
head prints first 10 lines maybe and tail print the last 10 lines

13. How can the `tac` command be useful in text processing or data analysis tasks? Provide a practical example.
tac - concatenate and print files in reverse (from the manual tac)

14. Explain the purpose of the `echo` command in scripting and how it can be used to display both static and dynamic content.
echo is used like print but in bash scripting

15. What information does the `df` command provide, and how can this information be useful for system administrators?
df - report file system disk space usage
(from manual)   
Filesystem     1K-blocks     Used Available Use% Mounted on
tmpfs             808612     2168    806444   1% /run
/dev/sda3       19946096 15226500   3681056  81% /
tmpfs            4043060    42376   4000684   2% /dev/shm
tmpfs               5120        4      5116   1% /run/lock
/dev/sda2         524252     6220    518032   2% /boot/efi
tmpfs             808612     1672    806940   1% /run/user/1000
/dev/sr0          155532   155532         0 100% /media/robot/CDROM
/dev/sr1         4899762  4899762         0 100% /media/robot/Ubuntu 22.04.4 LTS amd64


16. Compare and contrast the `df` and `du` commands in terms of their functionality and typical use cases.
du estimate file space usage but just in our directory.
4	./Robotics-Session01/.git/branches
8	./Robotics-Session01/.git/info
64	./Robotics-Session01/.git/hooks


17. How can the `ps` command be used to identify processes consuming the most CPU resources? Provide the command syntax.
  PID TTY          TIME CMD
   3035 pts/0    00:00:00 bash
   8622 pts/0    00:00:00 ps
PID is the processor ID


18. Explain the concept of an alias in the context of the `alias` command. How can aliases improve command-line efficiency?
alias is when we use a made up command to do a bunch of other legit commands

19. What information does the `uname` command provide, and how can this information be useful for troubleshooting system issues?
uname prints linux, we use it to know info about our system, if we for example are controlling a system in europe.

20. Describe the differences between `sudo` and `su` commands in terms of user privilege management. Provide examples of when to use each.
su is to change from regular user to a root user.
sudo is to execute a command from root.
su requires root permission so sudo su is to change root user.