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
        - source: salt://common/files/supervisor.conf
        - watch_in:
            - service: supervisor