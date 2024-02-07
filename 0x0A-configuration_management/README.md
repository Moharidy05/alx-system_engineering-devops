# Configuration Management

this project focuses on using puppet for configuration management tool.

## Tasks :page_with_curl:

* **0. Create a file**
  * [0-create_a_file.pp](./0-create_a_file.pp):Using Puppet, created a file in /tmp
    * File path is /tmp/school
    * File permission is 0744
    * File owner is www-data
    * File group is www-data
    * File contains I love Puppet

## Test
root@6712bef7a528:~# puppet-lint --version
puppet-lint 2.5.2
root@6712bef7a528:~# puppet-lint 0-create_a_file.pp
root@6712bef7a528:~# 
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
Notice: Compiled catalog for 6712bef7a528.ec2.internal in environment production in 0.04 seconds
Notice: /Stage[main]/Main/File[school]/ensure: defined content as '{md5}f1b70c2a42a98d82224986a612400db9'
Notice: Finished catalog run in 0.03 seconds
root@6712bef7a528:~#
root@6712bef7a528:~# ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school
root@6712bef7a528:~# cat /tmp/school
I love Puppetroot@6712bef7a528:~#

* **1. Install a package**
  * [1-install_a_package.pp](./1-install_a_package.pp): Using Puppet to install flask from pip3.
    * Install flask
    * Version must be 2.1.0

## Test
root@9665f0a47391:/# puppet apply 1-install_a_package.pp
Notice: Compiled catalog for 9665f0a47391 in environment production in 0.14 seconds
Notice: /Stage[main]/Main/Package[Flask]/ensure: created
Notice: Applied catalog in 0.20 seconds
root@9665f0a47391:/# flask --version
Python 3.8.10
Flask 2.1.0
Werkzeug 2.1.1

* **2. Execute a command**
  * [2-execute_a_command.pp](./2-execute_a_command.pp)
  * [killmenow](./killmenow): Using Puppet to create a manifest that kills a process named killmenow.
    * used the exec Puppet resource
    * use pkill
