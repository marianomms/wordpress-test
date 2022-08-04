#!/bin/bash

./scripts/wait_for_mysql.sh

# Needs HOME=/var/tmp to avoid permission issues
export HOME=/var/tmp/

wp core install --path="/var/www/html" --url=$WORDPRESS_URL --title="$WORDPRESS_TITLE" --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL

wp plugin install ocean-extra	elementor all-in-one-wp-migration header-footer-elementor --activate
# wp plugin install ocean-extra	elementor updraftplus --activate

wp plugin update --all

wp theme install oceanwp --activate

wp option update timezone_string "Europe/Madrid"
wp option update time_format "H:i"
wp option update date_format "d/m/Y"
wp option update permalink_structure "/%postname%/"
wp option update medium_size_w "500"
wp option update medium_size_h "0"
wp option update large_size_w "1280"
wp option update large_size_h "0"

sleep infinity
