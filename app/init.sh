#!/bin/bash
while true; do
    read -p "Is it first start? [y/n]" yn
    case $yn in
        [Yy]* )
         cd app

         # get framework
         composer create-project --prefer-dist --stability=dev yiisoft/yii2-app-basic web

         # get composer
         cd web
         composer install

         cd ../
         chmod -R 0777 web
         break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

exit;
