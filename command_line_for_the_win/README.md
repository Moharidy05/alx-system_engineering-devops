#Command line for the win
Bash
Scripting

References :

[SFTP Guide](https://intranet.alxswe.com/rltoken/OwMT_ctWdMI7L6JFzLvVKQ)
[SFTP File Transfer Tutorial](https://intranet.alxswe.com/rltoken/aTKBzKWZ5EI-qZjJVblUzg)

In this project I create a screenshot, showing that I completed the required levels [CMD Challenge](https://intranet.alxswe.com/rltoken/a83_NOBEtXgFr1Yqej0HYA)
Used the SFTP (Secure File Transfer Protocol) command-line tool in my local machine e.g git, to move local screenshots to the sandbox environment.
To performed the file transfer using SFTP;
Here are the steps to follow:

Take the screenshots of the completed levels.
Open a terminal or command prompt on your local machine.
Use the SFTP command-line tool to establish a connection to the sandbox environment. You will need the hostname, username, and password provided to you for the sandbox environment.
Once connected, navigate to the directory where you want to upload the screenshots.
Use the SFTP put command to upload the screenshots from your local machine to the sandbox environment.
Confirm that the screenshots have been successfully transferred by checking the sandbox directory.
Once the screenshots are transferred, you can proceed to push the screenshots to GitHub as mentioned in the initial requirements.

Example:
use ssh host@username, then input password  from ubuntu sandbox provided eg.
$ ssh host@username
this is to confirm your server is working. if it is, type exit to exit.
then:
$ sftp host@username
sftp> ls
sftp> cd /path/to/destination/directory e.g alx-system_engineering-devops/
sftp> cd command_line_for_the_win/
sftp> put /path/to/local/Pictures/0-first_9_tasks.jpg e.g /c/Users/hp/Pictures/0-first_9_tasks.jpg

###Tasks

0. First 九 tasks

Completed the first 9 tasks.
* [0-first_9_tasks.jpg](./0-first_9_tasks.jpg)
* [0-first_9_tasks.png](./0-first_9_tasks.png)

1. Reach חי completed tasks

Completed the 9 next tasks, getting to 18 total.
* [1-next_9_tasks.jpg](./1-next_9_tasks.jpg)
* [1-next_9_tasks.png](./1-next_9_tasks.png)

2. Reach the perfect cube, 27

Completed the 9 next tasks, getting to 27 total.
* [2-next_9_tasks.jpg](./2-next_9_tasks.jpg)
* [2-next_9_tasks.png](./2-next_9_tasks.png)
