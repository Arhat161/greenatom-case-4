nginx-full.deb:
  file.managed:
    - name: /tmp/nginx-full.deb
    - user: root
    - group: root
    - replace: True
    - makedirs: True
    - source: salt://nginx-full.deb
  cmd.run:
    - name: apt install /tmp/nginx-full.deb -y
  service.running:
    - name: nginx
    - enable: True
    - reload: True