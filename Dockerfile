FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY index.html /var/www/html/
COPY css /var/www/html/
COPY img /var/www/html/
COPY js /var/www/html/
COPY manifest.webmanifest /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
