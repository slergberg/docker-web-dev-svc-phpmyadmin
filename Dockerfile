# Base image
FROM phpmyadmin/phpmyadmin:latest

# Configurations
ADD ./configs/*.ini /usr/local/etc/php/conf.d/

# Expose ports
EXPOSE 80

# Healthcheck
ADD ./docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD docker-healthcheck
