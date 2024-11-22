server {
  listen 80;
  listen [::]:80;
  
  root /var/www/fjgarcia.io/html/static-website-example;
  index index.html index.htm index.nginx-debian.html;
  
  server_name fjgarcia.io.com www.fjgarcia.io.com;

  location / {
    deny 192.168.1.100;
    allow 192.168.1.0/24;
    allow 127.0.0.1;
    deny all;
  }
}
