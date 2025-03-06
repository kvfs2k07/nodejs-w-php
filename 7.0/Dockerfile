FROM ghcr.io/parkervcp/yolks:nodejs_20

# PHP
RUN apt-get install -y php8.3
RUN apt-get install -y php8.3-{curl,gd,dev,xml,bcmath,mysql,pgsql,mbstring,zip,bz2,sqlite,soap,intl,imap,imagick} php-memcached
RUN command -v php

# Display versions installed
RUN php -v
