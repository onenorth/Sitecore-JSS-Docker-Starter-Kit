#!/bin/bash
echo "Executing jss setup..."
echo "IMPORTANT: Be sure the Sitecore Website folder is mapped to '/usr/src/website' in docker-compose.yml"
echo "Enter '/usr/src/website' for 'Website' folder"

docker-compose exec jss sh -c "jss setup"

echo "Done!"