# include:
#     - common

# apache2:
#     pkg:
#         - installed
#     service.running:
#         - watch:
#             - pkg: apache2

# a2enmod rewrite:
#     cmd.run:
#         - unless: ls /etc/apache2/mods-enabled/rewrite.load
#         - watch_in: 
#             - service: apache2

# /etc/apache2/apache2.conf:
#     file.managed:
#         - source: salt://apache2/files/etc/apache2.conf
#         - watch_in:
#             - service: apache2

# /etc/apache2/ports.conf:
#     file.managed:
#         - source: salt://apache2/files/etc/ports.conf
#         - watch_in:
#             - service: apache2

# /etc/apache2/sites-available/default:
#     file.managed:
#         - source: salt://apache2/files/etc/sites-available/default
#         - watch_in:
#             - service: apache2