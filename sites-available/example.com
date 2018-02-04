server {
  # listen [::]:80 accept_filter=httpready; # for FreeBSD
  # listen 80 accept_filter=httpready; # for FreeBSD
  # listen [::]:80 deferred; # for Linux
  # listen 80 deferred; # for Linux
  listen 80 default_server deferred;

  # The host name to respond to
  server_name localhost;

  # Path for static files
  root /var/www;

  # Specify a charset
  charset utf-8;

  # Include the basic h5bp config set
  include h5bp/basic.conf;
}
