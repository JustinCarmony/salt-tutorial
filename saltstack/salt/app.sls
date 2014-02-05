/vagrant/app:
    composer.installed:
        - no_dev: true
        - composer: /root/composer.phar
        - php: /usr/bin/php