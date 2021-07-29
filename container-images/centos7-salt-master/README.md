# Docker CentOS 7 Salt Master
An automated docker container build for Centos7 and the latest version of Saltstack's salt-master. This image is automatically rebuilt each time there is a new version of the CentOS 7 container.

# Link to the Container
https://hub.docker.com/r/expresshosting/centos7-salt-master

## What is This Used For?
The intended use case for this container build is a self contained development environment for building and testing Saltstack Salt states on various OS based minions.

This container is part of a larger project for creating a testing environment for Saltstack state development. More information can be found at: https://github.com/tomwalsh/saltstack-docker-development

## The Goal of this Container
The goal for this container is to mirror, as closely as possible, the various production environments that could exist for a Saltstack deployment.

## Important
**Do not use this in production.**

This image is setup by default to be very insecure. The goal here is to make development of Saltstack states as easy as possible. This, and other associated containers, are designed to act as a disposable and easily rebuilt environment to test and refine your Saltstack states.

**Again, do not use this in production!**