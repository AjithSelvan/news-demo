apt update
apt upgrade
apt install -y nginx
# cat << EOF> /var/www/html/index.html
# echo "$(hostname -a)"
# echo "ulla vantachu"
# EOF
systemctl start nginx
systemctl enable nginx
