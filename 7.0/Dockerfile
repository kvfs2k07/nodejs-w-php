FROM node:20.18.3-bullseye

# PHP
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php && apt-get update && apt-get install -y php8.3
RUN apt-get install -y php8.3-{curl,gd,dev,xml,bcmath,mysql,pgsql,mbstring,zip,bz2,sqlite,soap,intl,imap,imagick} php-memcached
RUN command -v php

# Display versions installed
RUN php -v
