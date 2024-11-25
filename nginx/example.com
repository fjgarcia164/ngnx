server {
  listen 80;
  listen 443 ssl;
  
  root /var/www/example/html;
  index index.html index.htm index.nginx-debian.html;
  
  server_name www.example.com example.com;

  ssl_certificate /etc/ssl/certs/example.com.crt;
  ssl_certificate_key /etc/ssl/private/example.com.key;
  ssl_protocols TLSv1 TLSv1.1 TLSv1.2 TLSv1.3;
  ssl_ciphers HIGH:!aNULL:!MD5;

  location /contact.html {
    try_files $uri $uri/ =404;
  }
}
