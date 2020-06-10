FROM php:7.2-apache

COPY ./php_queue /var/www/html/php_queue
COPY ./cputil-linux-x64_v100.tar.gz /tmp/
#COPY ./hello.php /var/www/html/

RUN \
  && mkdir -p /opt/starmicronics/cputil \
  && tar -zxvf /tmp/cputil-linux-x64_v100.tar.gz -C /opt/starmicronics/cputil/ \
  && chmod 755 /opt/starmicronics/cputil/cputil-linux-x64/cputil \
  && ln -s /opt/starmicronics/cputil/cputil-linux-x64/cputil /usr/local/bin/cputil \
  && chown -R www-data:www-data /var/www/html/php_queue

