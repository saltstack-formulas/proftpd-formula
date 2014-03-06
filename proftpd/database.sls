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
            SQLLogFile: {{ salt['pillar.get']('proftpd:') }}
            SQLBackend: {{ salt['pillar.get']('proftpd:') }}
            SQLEngine: {{ salt['pillar.get']('proftpd:') }}
            SQLAuthenticate: {{ salt['pillar.get']('proftpd:') }}
            SQLAuthTypes: {{ salt['pillar.get']('proftpd:') }}
            AuthOrder: {{ salt['pillar.get']('proftpd:') }}
            SQLConnectInfo: {{ salt['pillar.get']('proftpd:') }}
            SQLUserInfo: {{ salt['pillar.get']('proftpd:') }}
            SQLGroupInfo: {{ salt['pillar.get']('proftpd:') }}
            SQLUserWhereClause: {{ salt['pillar.get']('proftpd:') }}
            SQLMinID: {{ salt['pillar.get']('proftpd:') }}
            SQLMinUserGID: {{ salt['pillar.get']('proftpd:') }}
            SQLNamedQuerylogin: {{ salt['pillar.get']('proftpd:') }}
            SQLNamedQuerydownload: {{ salt['pillar.get']('proftpd:') }}
            SQLNamedQueryupload: {{ salt['pillar.get']('proftpd:') }}
            SQLLogPASS: {{ salt['pillar.get']('proftpd:') }}
            SQLLogRETR: {{ salt['pillar.get']('proftpd:') }}
            SQLLogSTOR: {{ salt['pillar.get']('proftpd:') }}
