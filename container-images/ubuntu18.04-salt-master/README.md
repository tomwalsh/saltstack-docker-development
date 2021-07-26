# Docker Ubuntu 18.04 Salt Master
An automated docker container build for Ubuntu 18.04 and the latest version of Saltstack's salt-master. This image is automatically rebuilt each time there is a new version of the Ubuntu 18.04 container.

# Link to the Container
https://hub.docker.com/r/expresshosting/ubuntu18.04-salt-master

## What is This Used For?
The intended use case for this container build is a self contained development environment for building and testing Saltstack Salt states on various OS based minions.

## The Goal of this Container
The goal for this container is to mirror, as closely as possible, the various production environments that could exist for a Saltstack deployment.

## Important
**Do not use this in production.**

This image is setup by default to be very insecure. The goal here is to make development of Saltstack states as easy as possible. This, and other associated containers, are designed to act as a disposable and easily rebuilt environment to test and refine your Saltstack states.

**Again, do not use this in production!**