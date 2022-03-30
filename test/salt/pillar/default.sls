---
proftpd:

  ServerName: "SaltStack FTP Server"
  ServerType: standalone
  ServerIdent: '"off"'
  DefaultServer: '"on"'
  Port: 21
  MaxInstances: 50

  # General settings
  DeferWelcome: '"on"'
  MultilineRFC2228: '"on"'
  ShowSymlinks: '"on"'
  AllowOverwrite: '"on"'
  AllowStoreRestart: '"on"'
  AllowRetrieveRestart: '"on"'
  UseReverseDNS: '"off"'
  ListOptions: "-al"
  DisplayChdir: '.message'

  # Modules settings
  DelayEngine: '"off"'

  # Timeout settings
  TimeoutLogin: 240
  TimeoutNoTransfer: 1200
  TimeoutStalled: 1200
  TimeoutIdle: 1200

  # Security settings
  RootLogin: '"off"'
  RequireValidShell: '"off"'
  Umask: '133 022'
  DenyFilter: '\*.*/'

  DefaultRoot: '"~"'
  DirUmask: '022'
  DirAllowOverwrite: '"on"'
  DirHideNoAccess: '"on"'
  DirLimit: 'READ WRITE STOR CWD MKD RMD DELE XRMD XMKD RNFR POST_CMD'

  PathAllowFilter: '"^[a-zA-Z0-9_.-]()''+$"'
  PathDenyFilter: "'(\\.ftp)|(\\.ht)[a-z]+$'"

  # Activate Logging
  SyslogLevel: notice

  # Logging Formats
  LogFormat:
    default: '"%h %1 %u %t \"%r\" %s %b"'
    auth: '"%v [%P] %h %t \"%r\" %s"'
    write: '"%h %l %u %t \"%r\" %s %b"'

  ExtendedLog:
    Auth: '/var/log/proftpd/auth.log AUTH auth'

    # file/dir access
    Access: '/var/log/proftpd/access.log WRITE,READ write'

    # everything (be careful, generates_ very_ big logfiles)
    # ExtendedLog /var/log/proftpd/proftpd-all.log ALL default
    All: '/var/log/proftpd/all.log ALL'

  # Enable virus scanning and removal
  ClamAV: '"off"'
  # Specify the UNIX Local Socket
  ClamLocalSocket: /var/run/clamav/clamd.sock
  Modules:
    mod_radius: false
    mod_ident: true
