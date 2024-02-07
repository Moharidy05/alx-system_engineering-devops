# Project: 0x0F. Load balancer

### Background Context
Given 2 additional servers:

gc-[STUDENT_ID]-web-02-XXXXXXXXXX
gc-[STUDENT_ID]-lb-01-XXXXXXXXXX
Improved the web stack so that there is redundancy for my web servers. This will allow me to be able to accept more traffic by doubling the number of web servers, and to make the infrastructure more reliable. If one web server fails, I will still have a second one to handle requests.

For this project, I wrote Bash scripts to automate my work. All scripts are designed to configure a brand new Ubuntu server to match the task requirements.

## Resources

#### Resources:

* [Introduction to load-balancing and HAproxy](https://intranet.alxswe.com/rltoken/B7f3oz8i3Xvvom_YQZzLnQ)
* [HTTP header](https://intranet.alxswe.com/rltoken/sZ9v3Vq2tgLwN_PWVQketw)
* [Debian/Ubuntu HAProxy packages](https://intranet.alxswe.com/rltoken/2VRAgtKKR9g6Xfb0xzGiSg)
## Tasks

| Task | File |
| ---- | ---- |
| 0. Double the number of webservers | [0-custom_http_response_header](./0-custom_http_response_header) |
| 1. Install your load balancer | [1-install_load_balancer](./1-install_load_balancer) |
| 2. Add a custom HTTP header with Puppet | [2-puppet_custom_http_response_header.pp](./2-puppet_custom_http_response_header.pp)

0. Double the number of webservers
Configured web-02 to be identical to web-01.
Placing our web servers behind a load balancer for this project, we add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works.

Requirements:

Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
The name of the custom HTTP header must be X-Served-By
The value of the custom HTTP header must be the hostname of the server Nginx is running on
Write 0-custom_http_response_header so that it configures a brand new Ubuntu machine to the requirements asked
[Ignore](https://intranet.alxswe.com/rltoken/k3Bt6zu1On_-mDszxi0Z9w) [SC2154](https://intranet.alxswe.com/rltoken/9KwKHb9H8OJqcSK0saRIOA) for shellcheck

Example:

sylvain@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
sylvain@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
sylvain@ubuntu$

If your server’s hostnames are not properly configured ([STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.), follow this [tutorial](https://intranet.alxswe.com/rltoken/qSor8ulAHl4HedrO6KJEoQ).

1. Install your load balancer
Install and configure HAproxy on your lb-01 server.

Requirements:

Configure HAproxy so that it send traffic to web-01 and web-02
Distribute requests using a roundrobin algorithm
Make sure that HAproxy can be managed via an init script
Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02. If not, follow this tutorial.
For your answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements
Example:

sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes

sylvain@ubuntu$

2. Add a custom HTTP header with Puppet
Just as in task #0, I automated the task of creating a custom HTTP header response, but with Puppet.

The name of the custom HTTP header is X-Served-By
The value of the custom HTTP header is the hostname of the server Nginx is running on
Wrote 2-puppet_custom_http_response_header.pp so that it configures a brand new Ubuntu machine to the requirements in this task
