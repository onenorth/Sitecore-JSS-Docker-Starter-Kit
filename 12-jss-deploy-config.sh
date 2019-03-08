#!/bin/bash
echo "Executing jss deploy config"

docker-compose exec jss sh -c "jss deploy config"

echo "Done!"

