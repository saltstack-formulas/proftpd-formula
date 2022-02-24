---
proftpd:
  IdentLookups: {{ '""' if grains.get('osfinger', '') in ['Fedora-33'] else '"off"' }}
  User: nobody
  Group: nobody
