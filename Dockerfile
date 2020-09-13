FROM php:7.3.6-fpm-alpine3.9

# Instalação do bash e mysql-client
RUN apk add --no-cache openssl shadow bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

# Instalação do dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www

# Exclui a pasta html padrão da imagem
RUN rm -rf /var/www/html

# Instalação do composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Cria link simbólico
RUN ln -s public html 

# RUN usermod -u 1000 www-data
# USER www-data

EXPOSE 9000
ENTRYPOINT ["php-fpm"]
