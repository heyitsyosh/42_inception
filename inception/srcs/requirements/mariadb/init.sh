echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" > /etc/my.cnf.d/init.txt
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> /etc/my.cnf.d/init.txt
echo "FLUSH PRIVILEGES;" >> /etc/my.cnf.d/init.txt
mariadbd --init-file=/etc/my.cnf.d/init.txt