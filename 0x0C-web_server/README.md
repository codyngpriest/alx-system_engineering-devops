0x0C. Web server

Tasks

0. Transfer a file to your server
This is a Bash script that transfers a file from our client to a server:

1. Install nginx web server
Web servers are the piece of software generating and serving HTML pages, let’s install one!

2. Setup a domain name
.TECH Domains is one of the top domain providers. They are known for the stability and quality of their DNS hosting solution. We partnered with .TECH Domains so that you can learn about DNS.

3. Redirection
Configure your Nginx server so that /redirect_me is redirecting to another page.

4. Not found page 404
Configure your Nginx server to have a custom 404 page that contains the string Ceci n'est pas une page.

5. Install Nginx web server (w/ Puppet)
Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me.
