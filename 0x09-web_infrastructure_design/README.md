### 0x09-web_infrastructure_design

## Description

This project contains links to diagrams representing different web infrastructures with explanations.
This is to understand, on a very high-level, how web infrastructures are organized and their components.

0. Simple web stack

A lot of websites are powered by simple web infrastructure, a lot of time it is composed of a single server with a LAMP stack.

Designed a basic web infrastructure for www.foobar.com using a single server.

Web Infrastructure Design:

* User Accesses the Website:
A user types www.foobar.com into their web browser.

* Domain Name:
The domain name (www.foobar.com) is a human-readable address for the website.
It is registered through a domain registrar and configured with a DNS (Domain Name System) service.
A DNS record maps the domain name (www.foobar.com) to the server's IP address (8.8.8.8).

* Server:
The server (at IP address 8.8.8.8) is a physical or virtual machine that hosts the entire web infrastructure.
It is a computer system capable of handling requests from users and serving responses.

* Web Server (Nginx):
Nginx is a web server software that handles HTTP requests from clients (browsers) and serves static content.
It listens for incoming requests on port 80 (HTTP) and 443 (HTTPS) and forwards dynamic requests to the application server.

* Application Server:
The application server handles dynamic content and executes server-side code.
It communicates with the web server to process dynamic requests.
The application server runs your code base and generates responses based on user input or other parameters.

* Application Files (Code Base):
This is your website's codebase containing HTML, CSS, JavaScript, and other necessary files.
The application server executes this code to generate dynamic web pages.
* Database (MySQL):
MySQL is a relational database management system used to store and manage website data.
It stores information like user accounts, articles, product details, etc.
The application server communicates with the database to read or modify data as per user requests.
* Communication with User's Computer:
When the user accesses www.foobar.com, their computer sends an HTTP request to the server's IP address (8.8.8.8).
The request is received by the web server, which processes static content or forwards dynamic requests to the application server.
The application server interacts with the MySQL database if necessary and generates an HTTP response.
The response is sent back to the user's computer, which renders the website in the user's web browser.

1. Distributed web infrastructure

On a whiteboard, design a three server web infrastructure that hosts the website www.foobar.com.

2. Secured and monitored web infrastructure

On a whiteboard, design a three server web infrastructure that hosts the website www.foobar.com, it must be secured, serve encrypted traffic, and be monitored.
