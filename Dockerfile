# Base image
FROM phpmyadmin/phpmyadmin

# Expose ports
EXPOSE 80

# Healthcheck
ADD ./docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD docker-healthcheck
