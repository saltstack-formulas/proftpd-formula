{% from "proftpd/map.jinja" import proftpd with context %}

{% if salt['pillar.get']('proftpd:SQL:SQLBackend') == 'mysql' %}
{{ proftpd.mysql }}:
{% elif salt['pillar.get']('proftpd:SQL:SQLBackend') == 'postgres' %}
{{ proftpd.postgres }}:
{% endif %}
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
            SQLBackend: {{ salt['pillar.get']('proftpd:SQL:SQLBackend') }}
            SQLLogFile: {{ salt['pillar.get']('proftpd:SQL:SQLLogFile') }}
            SQLEngine: {{ salt['pillar.get']('proftpd:SQL:SQLEngine') }}
            SQLAuthenticate: {{ salt['pillar.get']('proftpd:SQL:SQLAuthenticate') }}
            SQLAuthTypes: {{ salt['pillar.get']('proftpd:SQL:SQLAuthTypes') }}
            AuthOrder: {{ salt['pillar.get']('proftpd:SQL:AuthOrder') }}
            SQLConnectInfo: {{ salt['pillar.get']('proftpd:SQL:SQLConnectInfo') }}
            SQLUserInfo: {{ salt['pillar.get']('proftpd:SQL:SQLUserInfo') }}
            SQLGroupInfo: {{ salt['pillar.get']('proftpd:SQL:SQLGroupInfo') }}
            SQLUserWhereClause: {{ salt['pillar.get']('proftpd:SQL:SQLUserWhereClause') }}
            SQLMinID: {{ salt['pillar.get']('proftpd:SQL:SQLMinID') }}
            SQLMinUserGID: {{ salt['pillar.get']('proftpd:SQL:SQLMinUserGID') }}
            SQLNamedQuerylogin: {{ salt['pillar.get']('proftpd:SQL:SQLNamedQuerylogin') }}
            SQLNamedQuerydownload: {{ salt['pillar.get']('proftpd:SQL:SQLNamedQuerydownload') }}
            SQLNamedQueryupload: {{ salt['pillar.get']('proftpd:SQL:SQLNamedQueryupload') }}
            SQLLogPASS: {{ salt['pillar.get']('proftpd:SQL:SQLLogPASS') }}
            SQLLogRETR: {{ salt['pillar.get']('proftpd:SQL:SQLLogRETR') }}
            SQLLogSTOR: {{ salt['pillar.get']('proftpd:SQL:SQLLogSTOR') }}
