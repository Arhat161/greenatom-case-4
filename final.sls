index.nginx-debian.html:
 file.managed:
    - name: /var/www/html/index.nginx-debian.html
    - user: root
    - group: root
 cmd.run:
    - name: rm /var/www/html/index.nginx-debian.html
    - name: echo "<html><body><h1>Hello Greenatom</h1></body></html>" > /var/www/html/index.nginx-debian.html
