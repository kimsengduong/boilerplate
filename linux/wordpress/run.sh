docker-compose up -d 

cp -n nginx/config.conf /etc/nginx/sites-available/${PWD##*/}.conf
ln -s /etc/nginx/sites-available/${PWD##*/}.conf /etc/nginx/sites-enabled
nginx -t
sudo service nginx restart