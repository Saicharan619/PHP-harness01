FROM php:8.1-apache
WORKDIR /app

COPY . .

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

RUN composer install

# copy PHP files to web root
RUN mkdir -p /var/www/html
RUN cp -r src/* /var/www/html/

# place vendor **one level up**
RUN cp -r vendor /var/www/

# change Apache port to 8111
RUN sed -i 's/80/8111/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 8111
CMD ["apache2-foreground"]

