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
            SQLBackend: {{ salt['pillar.get']('proftpd:SQLBackend') }}
            SQLLogFile: {{ salt['pillar.get']('proftpd:SQLLogFile') }}
            SQLEngine: {{ salt['pillar.get']('proftpd:SQLEngine') }}
            SQLAuthenticate: {{ salt['pillar.get']('proftpd:SQLAuthenticate') }}
            SQLAuthTypes: {{ salt['pillar.get']('proftpd:SQLAuthTypes') }}
            AuthOrder: {{ salt['pillar.get']('proftpd:AuthOrder') }}
            SQLConnectInfo: {{ salt['pillar.get']('proftpd:SQLConnectInfo') }}
            SQLUserInfo: {{ salt['pillar.get']('proftpd:SQLUserInfo') }}
            SQLGroupInfo: {{ salt['pillar.get']('proftpd:SQLGroupInfo') }}
            SQLUserWhereClause: {{ salt['pillar.get']('proftpd:SQLUserWhereClause') }}
            SQLMinID: {{ salt['pillar.get']('proftpd:SQLMinID') }}
            SQLMinUserGID: {{ salt['pillar.get']('proftpd:SQLMinUserGID') }}
            SQLNamedQuerylogin: {{ salt['pillar.get']('proftpd:SQLNamedQuerylogin') }}
            SQLNamedQuerydownload: {{ salt['pillar.get']('proftpd:SQLNamedQuerydownload') }}
            SQLNamedQueryupload: {{ salt['pillar.get']('proftpd:SQLNamedQueryupload') }}
            SQLLogPASS: {{ salt['pillar.get']('proftpd:SQLLogPASS') }}
            SQLLogRETR: {{ salt['pillar.get']('proftpd:SQLLogRETR') }}
            SQLLogSTOR: {{ salt['pillar.get']('proftpd:SQLLogSTOR') }}
