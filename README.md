# Sitecore JSS Docker Starter Kit

This is a Sitecore JSS starter kit based on Docker. This kit allows Sitecore JSS development within docker. The starter kit is based on https://jss.sitecore.com/docs/getting-started/quick-start.

This starter kit is useful if you are actively developing multiple NodeJS applications each requiring different NodeJS versions.  The need to use NVM is removed if NodeJS development is contained within a Docker container.

Note: This Docker setup is based on Linux containers.

# Getting Started

## First run
The very first time you run this starter kit, execute the following command from bash:

```
sh 01-quick-start.sh
```

This command should only be run once when creating the project for the first time.  This command populates the **jss** service with the default Sitecore JSS files.

Once this is done. you should be able to navigate to `http://localhost:3000/` and see the site.

## Each Additional Run
Each additional run, standard docker commands can be run:

```
docker-compose up
```

## Running after getting latest / updates

Items in the containers may need to be updated when getting latest or updating the package.json.
Perform the following to make sure the containers are updated.

1. Run __`docker-compose down`__
1. Run __`docker-compose up --build`__

## Troubleshooting

When all else fails and the containers will not spin up, perform the following tasks.

> WARNING, all containers, volumes, and images will be removed.

1. Run __`docker stop $(docker ps -a -q)`__
1. Run __`docker system prune --all`__ or __`docker system prune --all --volumes`__ from Git Bash to wipe out the images.

# Running JSS Commands

The JSS site is running within the context of a Docker Container.  The JSS documentation https://jss.sitecore.com/docs/getting-started/quick-start calls out running `jss` commands.  These commands need to be run within the Docker container.

One way commands can be run within the container is by opening a shell into the container.  To open a shell, run the following command:

```
sh 99-shell.sh
```

> Note: The container needs to be running when running the above script.

Now, you can run any of the `jss` commands called out by the documentation.

## JSS Command Scripts

To save time, several shell scripts have been provided that handle running JSS commands for you.

* `02-remove-sample-content.sh` - This script removes all of the sample code in the JSS project.  This creates a blank canvas.
* `03-jss-scaffold.sh` - This executes `jss scaffold` within the container.
* `11-jss-setup` - This executes `jss setup` within the container. Be sure the Sitecore Website folder is correctly mapped to '/usr/src/website' in docker-compose.yml
* `12-jss-deploy-config.sh` - This executes `jss deploy config` within the container.
* `13-jss-deploy-app.sh` - This executes `jss deploy app --includeContent --includeDictionary` within the container.

# Troubleshooting

When running `jss deploy app --includeContent --includeDictionary`, if endpoint cannot be found, ping host.docker.internal from within the container.  Register that IP address in the HOSTS file for the JSS site.


