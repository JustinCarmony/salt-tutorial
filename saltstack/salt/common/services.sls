include:
    - common

# Supervisor 
supervisor:
    pkg:
        - installed
    service.running:
        - require:
            - pkg: supervisor

/etc/supervisor/supervisor.conf:
    file.managed:
        - source: salt://common/files/etc/supervisor.conf
        - watch_in:
            - service: supervisor

/etc/init.d/supervisor:
    file.managed:
        - source: salt://common/files/init.d/supervisor
        - mode: 755
        - watch_in:
            - service: supervisor