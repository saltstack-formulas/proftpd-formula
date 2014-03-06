{% from "proftpd/map.jinja" import proftpd with context %}

proftpd:
  pkg:
    - installed
    - name: {{ proftpd.pkg }}
  service:
    - running
    - name: {{ proftpd.service }}
    - enable: True
    - watch:
        - file: {{ proftpd.config }}

{{ proftpd.config }}:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - template: jinja
        - defaults:
            ServerName: {{ salt['pillar.get']('proftpd:ServerName') }}
            ServerType: {{ salt['pillar.get']('proftpd:ServerType') }}
            ServerIdent: {{ salt['pillar.get']('proftpd:ServerIdent', 'off') }}
            DefaultServer: {{ salt['pillar.get']('proftpd:DefaultServer') }}
            Port: {{ salt['pillar.get']('proftpd:Port', 21) }}
            MaxInstances: {{ salt['pillar.get']('proftpd:MaxInstances') }}
            DeferWelcome: {{ salt['pillar.get']('proftpd:DeferWelcome') }}
            MultilineRFC2228: {{ salt['pillar.get']('proftpd:MultilineRFC2228') }}
            ShowSymlinks: {{ salt['pillar.get']('proftpd:ShowSymlinks') }}
            AllowOverwrite: {{ salt['pillar.get']('proftpd:AllowOverwrite') }}
            AllowStoreRestart: {{ salt['pillar.get']('proftpd:AllowStoreRestart') }}
            AllowRetrieveRestart: {{ salt['pillar.get']('proftpd:AllowRetrieveRestart') }}
            UseReverseDNS: {{ salt['pillar.get']('proftpd:UseReverseDNS') }}
            IdentLookups: {{ salt['pillar.get']('proftpd:IdentLookups') }}
            ListOptions: {{ salt['pillar.get']('proftpd:ListOptions') }}
            DisplayChdir: {{ salt['pillar.get']('proftpd:DisplayChdir') }}
            DelayEngine: {{ salt['pillar.get']('proftpd:DelayEngine') }}
            TimeoutLogin: {{ salt['pillar.get']('proftpd:TimeoutLogin') }}
            TimeoutNoTransfer: {{ salt['pillar.get']('proftpd:TimeoutNoTransfer') }}
            TimeoutStalled: {{ salt['pillar.get']('proftpd:TimeoutStalled') }}
            TimeoutIdle: {{ salt['pillar.get']('proftpd:TimeoutIdle') }}
            RootLogin: {{ salt['pillar.get']('proftpd:RootLogin') }}
            RequireValidShell: {{ salt['pillar.get']('proftpd:RequireValidShell') }}
            User: {{ salt['pillar.get']('proftpd:User') }}
            Group: {{ salt['pillar.get']('proftpd:Group') }}
            Umask: {{ salt['pillar.get']('proftpd:Umask') }}
            DefaultRoot: {{ salt['pillar.get']('proftpd:DefaultRoot') }}
            DenyFilter: {{ salt['pillar.get']('proftpd:DenyFilter') }}
            LogFormatDefault: {{ salt['pillar.get']('proftpd:LogFormat:default') }}
            LogFormatAuth: {{ salt['pillar.get']('proftpd:LogFormat:auth') }}
            LogFormatWrite: {{ salt['pillar.get']('proftpd:LogFormat:write') }}
            SyslogLevel: {{ salt['pillar.get']('proftpd:SyslogLevel') }}
            ExtendedLogAccess: {{ salt['pillar.get']('proftpd:ExtendedLog:Access') }}
            ExtendedLogAuth: {{ salt['pillar.get']('proftpd:ExtendedLog:Auth') }}
            ExtendedLogAll: {{ salt['pillar.get']('proftpd:ExtendedLog:All') }}
