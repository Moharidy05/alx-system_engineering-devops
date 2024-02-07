# Project: 0x07. Networking basics #0

## Resources

#### Read or watch:

* [OSI model](https://intranet.alxswe.com/rltoken/k2uCsynicuNbu1cAQhXqVQ)
* [Different types of network](https://intranet.alxswe.com/rltoken/XW3ZGm5Ya_a8XVDXcAKT_A)
* [LAN network](https://intranet.alxswe.com/rltoken/en370-Hrwgi_GUvFcg3bKg)
* [WAN network](https://intranet.alxswe.com/rltoken/Ah1EKqnINR85lM4P2WnLSw)
* [Internet](https://intranet.alxswe.com/rltoken/Lwh9xQxFD4dWh5sIApXI1g)
* [MAC address](https://intranet.alxswe.com/rltoken/j-Wp-YRvFTVP04SpIeRzHQ)
* [What is an IP address](https://intranet.alxswe.com/rltoken/HaZZvrmGaQ3U7ZLDYgZb6w)
* [Private and public address](https://intranet.alxswe.com/rltoken/OPJCZYuWSEXLIZOqU9Uc0A)
* [IPv4 and IPv6](https://intranet.alxswe.com/rltoken/M8g-egWLlldTl6Y0QECdwA)
* [Localhost](https://intranet.alxswe.com/rltoken/7lj-zoZQ7xFTkj4MTyos_g)
* [TCP and UDP](https://intranet.alxswe.com/rltoken/uJbs8E9-FyATfsELpmtTIg)
* [TCP/UDP ports List](https://intranet.alxswe.com/rltoken/4PYkqDfOvIZZb9aUPGOOzQ)
* [What is ping /ICMP](https://intranet.alxswe.com/rltoken/3zBgO6r2M1Q8lUVt9g8aJw)
* [Positional parameters](https://intranet.alxswe.com/rltoken/ZbMHH3jmxFhcrbigVy15iw)
## Learning Objectives

### General

* What it is
* How many layers it has
* How it is organized
## Tasks

| Task | File |
| ---- | ---- |
| 0. OSI model | [0-OSI_model](./0-OSI_model) |
| 1. Types of network | [1-types_of_network](./1-types_of_network) |
| 2. MAC and IP address | [2-MAC_and_IP_address](./2-MAC_and_IP_address) |
| 3. UDP and TCP | [3-UDP_and_TCP](./3-UDP_and_TCP) |
| 4. TCP and UDP ports | [4-TCP_and_UDP_ports](./4-TCP_and_UDP_ports) |
| 5. Is the host on the network | [5-is_the_host_on_the_network](./5-is_the_host_on_the_network) |


1. Types of network

LAN connect local devices together, WAN connects LANs together, and WANs are operating over the Internet.

Questions:

What type of network a computer in local is connected to?

Internet
WAN
LAN
What type of network could connect an office in one building to another office in a building a few streets away?

Internet
WAN
LAN
What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?

Internet
WAN
LAN

2. MAC and IP address

Questions:

What is a MAC address?

The name of a network interface
The unique identifier of a network interface
A network interface
What is an IP address?

Is to devices connected to a network what postal address is to houses
The unique identifier of a network interface
Is a number that network devices use to connect to networks

3. UDP and TCP

Let’s fill the empty parts in the drawing above.

Questions:

Which statement is correct for the TCP box:
It is a protocol that is transferring data in a slow way but surely
It is a protocol that is transferring data in a fast way and might loss data along in the process
Which statement is correct for the UDP box:
It is a protocol that is transferring data in a slow way but surely
It is a protocol that is transferring data in a fast way and might loss data along in the process
Which statement is correct for the TCP worker:
Have you received boxes x, y, z?
May I increase the rate at which I am sending you boxes?

4. TCP and UDP ports

Once packets have been sent to the right network device using IP using either UDP or TCP as a mode of transportation, it needs to actually enter the network device.

If we continue the comparison of a network device to your house, where IP address is like your postal address, UDP and TCP ports are like the windows and doors of your place. A TCP/UDP network device has 65535 ports. Some of them are officially reserved for a specific usage, some of them are known to be used for a specific usage (but nothing is officially declared) and the rest are free of use.

While the full list of ports should not be memorized, it is important to know the most used ports, let’s start by remembering 3 of them:

22 for SSH
80 for HTTP
443 for HTTPS
Note that a specific IP + port = socket.

Write a Bash script that displays listening ports:

That only shows listening sockets
That shows the PID and name of the program to which each socket belongs
Example:

sylvain@ubuntu$ sudo ./4-TCP_and_UDP_ports
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 *:sunrpc                *:*                     LISTEN      518/rpcbind
tcp        0      0 *:ssh                   *:*                     LISTEN      1240/sshd
tcp        0      0 *:32938                 *:*                     LISTEN      547/rpc.statd
tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN      518/rpcbind
tcp6       0      0 [::]:ssh                [::]:*                  LISTEN      1240/sshd
tcp6       0      0 [::]:33737              [::]:*                  LISTEN      547/rpc.statd
udp        0      0 *:sunrpc                *:*                                 518/rpcbind
udp        0      0 *:691                   *:*                                 518/rpcbind
udp        0      0 localhost:723           *:*                                 547/rpc.statd
udp        0      0 *:60129                 *:*                                 547/rpc.statd
udp        0      0 *:3845                  *:*                                 562/dhclient
udp        0      0 *:bootpc                *:*                                 562/dhclient
udp6       0      0 [::]:47444              [::]:*                              547/rpc.statd
udp6       0      0 [::]:sunrpc             [::]:*                              518/rpcbind
udp6       0      0 [::]:50038              [::]:*                              562/dhclient
udp6       0      0 [::]:691                [::]:*                              518/rpcbind
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
unix  2      [ ACC ]     STREAM     LISTENING     7724     518/rpcbind         /run/rpcbind.sock
unix  2      [ ACC ]     STREAM     LISTENING     6525     1/init              @/com/ubuntu/upstart
unix  2      [ ACC ]     STREAM     LISTENING     8559     835/dbus-daemon     /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     9190     1087/acpid          /var/run/acpid.socket
unix  2      [ ACC ]     SEQPACKET  LISTENING     7156     378/systemd-udevd   /run/udev/control
sylvain@ubuntu$

5. Is the host on the network

The Internet Control Message Protocol (ICMP) is a protocol in the Internet protocol suite. It is used by network devices, to check if other network devices are available on the network. The command ping uses ICMP to make sure that a network device remains online or to troubleshoot issues on the network.

Write a Bash script that pings an IP address passed as an argument.

Requirements:

Accepts a string as an argument
Displays Usage: 5-is_the_host_on_the_network {IP_ADDRESS} if no argument passed
Ping the IP 5 times
Example:

sylvain@ubuntu$ ./5-is_the_host_on_the_network 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms

--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4006ms
rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
sylvain@ubuntu$
sylvain@ubuntu$ ./5-is_the_host_on_the_network
Usage: 5-is_the_host_on_the_network {IP_ADDRESS}
sylvain@ubuntu$ 
It is interesting to look at the time value, which is the time that it took for the ICMP request to go to the 8.8.8.8 IP and come back to my host. The IP 8.8.8.8 is owned by Google, and the quickest roundtrip between my computer and Google was 7.57 ms which is pretty fast, which is a sign that the network path between my computer and Google’s datacenter is in good shape. A slow ping would indicate a slow network.

Next time you feel that your connection is slow, try the ping command to see what is going on!


