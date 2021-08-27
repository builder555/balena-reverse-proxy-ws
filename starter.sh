sed s/__WSPORT__/${WSPORT:-8765}/ -i /etc/nginx/nginx.conf
sed s/__WSHOST__/${WSHOST:-ws-server}/ -i /etc/nginx/nginx.conf
nginx -g "daemon off;"