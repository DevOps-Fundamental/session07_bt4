sudo mkdir -p /var/www/html
sudo cp index.html /var/www/html/index.html
sudo cp spring-proxy.conf /etc/nginx/sites-available/spring-proxy.conf
sudo rm -f /etc/nginx/sites-enabled/default
sudo ln -sf /etc/nginx/sites-available/spring-proxy.conf /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
curl -I http://localhost/
curl -s http://localhost/ | grep -E 'Họ và tên|Mã lớp'
curl -I http://localhost/api/health
