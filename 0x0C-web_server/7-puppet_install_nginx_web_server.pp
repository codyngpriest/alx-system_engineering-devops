# Add Nginx Stable Repository
exec { 'add nginx stable repo':
  command => 'sudo add-apt-repository ppa:nginx/stable',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# Update Software Packages List
exec { 'update packages':
  command => 'apt-get update',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# Install Nginx Package
package { 'nginx':
  ensure     => 'installed',
}

# Allow HTTP Traffic through Firewall
exec { 'allow HTTP':
  command => "ufw allow 'Nginx HTTP'",
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => '! dpkg -l nginx | egrep \'îi.*nginx\' > /dev/null 2>&1',
}

# Change Permissions for the Web Folder
exec { 'chmod www folder':
  command => 'chmod -R 755 /var/www',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# Create Index HTML File
file { '/var/www/html/index.html':
  content => "Hello World!\n",
}

# Create 404 HTML File
file { '/var/www/html/404.html':
  content => "Ceci n'est pas une page\n",
}

# Configure Nginx Default Server Block
file { 'Nginx default config file':
  ensure  => file,
  path    => '/etc/nginx/sites-enabled/default',
  content =>
"server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    server_name _;

    location / {
        # First attempt to serve request as file, then
        # as directory, then fall back to displaying a 404.
        try_files \$uri \$uri/ =404;
    }

    # Custom 404 Error Page
    error_page 404 /404.html;
    location  /404.html {
        internal;
    }

    # Redirect Rule
    if (\$request_filename ~ redirect_me) {
        rewrite ^ https://www.github.com/codynpriest permanent;
    }
}",
}

# Restart Nginx Service
exec { 'restart service':
  command => 'service nginx restart',
  path    => '/usr/bin:/usr/sbin:/bin',
}

# Ensure Nginx Service is Running
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
