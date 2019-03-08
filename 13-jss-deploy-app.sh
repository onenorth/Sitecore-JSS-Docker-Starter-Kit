#!/bin/bash
echo "Executing jss deploy app"
echo "NOTE: if endpoint cannot be found, ping host.docker.internal from within the container.  Register that IP address in the HOSTS file for the JSS site."

docker-compose exec jss sh -c "jss deploy app --includeContent --includeDictionary"

echo "Done!"