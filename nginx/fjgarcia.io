server {
  listen 80;
  listen [::]:80;
  
  root /var/www/fjgarcia.io/html;
  index index.html index.htm index.nginx-debian.html;
  
  server_name fjgarcia.io.com www.fjgarcia.io.com;

  location / {
        try_files $uri $uri/ =404;
        auth_basic "Área restringida";
        auth_basic_user_file /etc/nginx/.htpasswd;
        allow 192.168.1.0/24;
        allow 127.0.0.1;
        allow 10.0.2.0/24;
        allow 10.108.0.0/16;
        deny all;
  }
}
