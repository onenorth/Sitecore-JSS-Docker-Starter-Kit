#!/bin/bash
echo "Quick Start..."

read -p "JSS Template [vue]: " template
template=${template:-vue}
echo $template

docker-compose run jss sh -c "cd .. && jss create jss ${template} && rsync -av --progress /usr/src/jss/ /usr/src/app/ --exclude=node_modules"

docker-compose up --build