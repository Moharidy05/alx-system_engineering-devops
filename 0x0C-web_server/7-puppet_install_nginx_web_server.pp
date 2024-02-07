#!/usr/bin/env bash
# Configure server using puppet

# defines a Puppet class called nginx_server that 
# encapsulates the configuration for the Nginx server.
# Script to install nginx using puppet

package { 'nginx':
  ensure => 'present',
}

exec { 'install_nginx':
  command  => 'sudo apt-get update && sudo apt-get -y install nginx',
  path     => '/usr/bin',
  creates  => '/etc/nginx',
  require  => Package['nginx'],
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
  require => Exec['install_nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => '
    server {
      listen 80 default_server;
      root /var/www/html;
      index index.html;

      location /redirect_me {
        return 301 https://blog.ehoneahobed.com/;
      }
    }
  ',
  require => File['/var/www/html/index.html'],
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => File['/etc/nginx/sites-available/default'],
}
