# -*- coding: utf-8 -*-
# vim: ft=yaml
---
base:
  '*':
    - ../default
    - sftp
  'G@os_family:Debian':
    - ../debian
  'G@os_family:RedHat':
    - ../redhat
  'G@os_family:Suse':
    - ../suse
  'G@os_family:Gentoo':
    - ../gentoo
...
