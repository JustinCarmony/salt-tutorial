include:
    - common
    - apache2

php5:
    pkg.installed:
        - names:
            - php5
            - php5-cli
            - php5-mysql
            - libapache2-mod-php5