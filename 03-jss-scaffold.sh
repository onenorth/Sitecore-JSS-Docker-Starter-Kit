#!/bin/bash
echo "Scaffold Component..."

read -p "Component Name [MyFirstComponent]: " component_name
component_name=${component_name:-MyFirstComponent}
echo $component_name

docker-compose exec jss sh -c "jss scaffold ${component_name}"

echo "Done!"
