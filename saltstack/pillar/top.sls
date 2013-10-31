base:
    '*':
        - helloworld
    'minion1.*':
        - mysql.client
    'minion2.*':
        - mysql.client
        - mysql.server