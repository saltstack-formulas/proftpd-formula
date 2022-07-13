---
proftpd:
  Modules:
    - mod_sftp
  SFTP:
    Port: 4000
    SFTPHostKey:
      - '/etc/ssh/ssh_host_rsa_key'
      - '/etc/ssh/ssh_host_dsa_key'
