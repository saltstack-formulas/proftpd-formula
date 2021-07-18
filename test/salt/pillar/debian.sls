---
proftpd:
  IdentLookups: {{ '""' if grains.get('osfinger', '') in ['Debian-11'] else '"off"' }}
  User: nobody
  Group: nogroup
