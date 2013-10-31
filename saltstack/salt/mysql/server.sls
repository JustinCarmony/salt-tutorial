# # dependencies for mysql & salt
# python-mysqldb:
#     pkg:
#         - installed

# mysql:
#     pkg.installed:
#         - name: mysql-server
#     service:
#         - running

# ## Change Root Password
# mysql_change_root:
#     cmd.wait:
#         - name: "mysqladmin -u {{ pillar['mysql_server']['connection_user'] }} password {{ pillar['mysql_server']['connection_pass'] }}"
#         - watch:
#             - pkg: mysql

# /etc/mysql/my.cnf:
#     file.managed:
#         - source: salt://mysql/files/my.cnf
#         - watch_in:
#             - service: mysql

# ## MySQL Users
# default_mysql_user:
#     mysql_user.present:
#         - name: {{ pillar['mysql_client']['user'] }}
#         - password: {{ pillar['mysql_client']['pass'] }}
#         - connection_user: {{ pillar['mysql_server']['connection_user'] }}
#         - connection_pass: {{ pillar['mysql_server']['connection_pass'] }}

