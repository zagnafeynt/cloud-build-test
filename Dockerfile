FROM ubuntu:latest
WORKDIR /app-test
RUN apt update && apt install -y \
    apache2 \
    apache2-utils \
    php \
    libapache2-mod-php \
    php-mysql && \
    apt clean
# expose - just a marker because of docker-compose.yml
EXPOSE 80
#COPY index.php /var/www/html/
#COPY dir.conf /etc/apache2/mods-enabled/
#RUN rm /var/www/html/index.html
CMD ["apache2ctl", "-D", "FOREGROUND"] 