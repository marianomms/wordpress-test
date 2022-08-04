#!/bin/bash

if [[ $1 == "--clean" ]] ; then
  docker compose down -v

  # remove current plugin, themes folder
  # sudo rm -rf plugins
  # mkdir plugins

  # sudo rm -rf themes
  # mkdir themes


  # unzip plugins
  # for filename in scripts/plugins/*.zip; do
  #   unzip -d plugins/ $filename
  # done
  # sudo chown -R www-data:www-data plugins

  # # unzip themes
  # for filename in scripts/themes/*.zip; do
  #   unzip -d themes/ $filename
  # done
  # sudo chown -R www-data:www-data themes
fi

docker compose up
