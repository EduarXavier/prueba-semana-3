FROM php:8.1-apache

WORKDIR /var/www/html

COPY ./app .

RUN apt-get update && apt-get install -y git unzip zlib1g-dev libzip-dev

RUN docker-php-ext-install pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sS https://get.symfony.com/cli/installer | bash && mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

RUN composer install

EXPOSE 8080

CMD ["symfony", "server:start"]
