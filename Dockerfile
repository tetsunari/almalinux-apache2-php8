FROM almalinux

COPY ./ /src

COPY ./php.ini /etc/php.ini

RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm && \
    dnf module enable php:remi-8.0 -y && \
    dnf install -y httpd && \
    dnf install -y php && \
    dnf -y install wget && \
    wget https://getcomposer.org/installer -O composer-installer.php && \
    mkdir /run/php-fpm/ && \
    php composer-installer.php --filename=composer --install-dir=/usr/local/bin && \
    yum -y install \
    php-mcrypt \
    bind-utils \
    which   #centOSではwhichコマンドが使えないのでinstall

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

WORKDIR /src
