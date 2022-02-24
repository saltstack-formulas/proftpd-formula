{% from "proftpd/map.jinja" import proftpd with context %}

{% if not salt['pillar.get']('proftpd:Modules:mod_sftp') %}
missing_sftp_require_pillar:
  test.fail_without_changes
{% endif %}

proftpd_sftp_config_file:
  file.managed:
    - name: {{ proftpd.sftp_config }}
    - source: salt://proftpd/files/sftp.conf
    - user: root
    - group: root
    - mode: 644
    - makedirs: true
    - show_changes: true
    - template: jinja
    - context:
      sftp_config: {{ proftpd.sftp_config }}
      sftp: {{ proftpd.SFTP }}

proftpd_sftp_service_restart:
  service.running:
    - name: proftpd
    - watch:
      - file: {{ proftpd.sftp_config }}
