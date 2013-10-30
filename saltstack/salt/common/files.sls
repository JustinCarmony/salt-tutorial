/etc/hostname:
    file.managed:
        - contents: {{ grains['id'] }}