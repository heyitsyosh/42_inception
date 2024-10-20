set -x
cd /var/www/html
wp config create	--dbhost=$WPDB_HOST \
					--dbname=$DB_NAME \
					--dbuser=$DB_USER \
					--dbpass=$DB_PASSWORD \
					--allow-root
wp core install	--url=$DOMAIN \
				--title=$WP_TITLE \
				--admin_user=$WP_ADMIN_USER \
				--admin_password=$WP_ADMIN_PASSWORD \
				--admin_email=$WP_ADMIN_EMAIL \
				--skip-email \
				--allow-root
wp user create	$WP_USER \
				$WP_USER_EMAIL \
				--role=author \
				--user_pass=$WP_USER_PASSWORD \
				--allow-root
php-fpm7.4 -F
