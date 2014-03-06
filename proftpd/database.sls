{% from "proftpd/map.jinja" import proftpd with context %}

{{ proftpd.mysql }}:
  pkg:
    - installed

{{ proftpd.config }}:
  file.append:
    - text:
        - Include /etc/proftpd/sql.conf

{{ proftpd.sql_config }}:
    file.managed:
        - source: salt://proftpd/files/sql.conf
        - user: root
        - group: root
        - mode: 644
        - template: jinja
        - defaults:
            SQLLogFile: '/var/log/proftpd/sql.log'
            SQLBackend: mysql|postgres
            SQLEngine: on
            SQLAuthenticate: on
            SQLAuthTypes: Crypt|Plaintext
            AuthOrder: 'mod_sql.c'
            SQLConnectInfo: 'username@dbhost username randompassword'
            SQLUserInfo: 'users username password uid gid homedir shell'
            SQLGroupInfo: 'groups groupname gid members'
            SQLUserWhereClause: '"login_enabled = 'y'"'
            SQLMinID: 999
            SQLMinUserGID: 999
            SQLNamedQuerylogin: 'login UPDATE "last_login=now(), login_count=login_count+1 WHERE username='%u'" users'
            SQLNamedQuerydownload: 'download UPDATE "down_count=down_count+1, down_bytes=down_bytes+%b WHERE username='%u'" users'
            SQLNamedQueryupload: 'upload UPDATE "up_count=up_count+1, up_bytes=up_bytes+%b WHERE username='%u'" users'
            SQLLogPASS: 'PASS login'
            SQLLogRETR: 'RETR download'
            SQLLogSTOR: 'STOR upload'
