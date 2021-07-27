# Saltstack Docker Development Environment
A Docker Compose environment that can be used to mock up or test your Saltstack states.

## How Does This Work?
Using Docker Compose we spin up several prebuilt containers to create a self-contained Saltstack environment with a master and several slaves.

## Getting Started
To start up a new environment use the `./build.sh` command to start docker compose.

By default the build script will create an Ubuntu 18.04 based salt-master. You can override that with a command line option to build.sh.

Available options are:
* ubuntu18.04 (default)
* ubuntu20.04
* centos7
* centos8

#### Starting an Ubuntu 18.04 based Salt Master
```bash
./build.sh
```

#### Starting a CentOS 8 based Salt Master
```bash
./build.sh centos8
```
![Building the Salt Environment](https://raw.githubusercontent.com/tomwalsh/saltstack-docker-development/61b1436f178ce796f7f6205b814c5d9c7e5351fe/screenshots/building-salt-environment.gif)

## Minion Debugging
All minions are run with debugging on by default. Since all minions are spun up from the docker compose, you can view the docker compose window to see the output of the salt commands from the minions.

Here we can see the test.ping command sent to each minion from the master `salt * test.ping`:

![Minion Debugging Output](https://raw.githubusercontent.com/tomwalsh/saltstack-docker-development/61b1436f178ce796f7f6205b814c5d9c7e5351fe/screenshots/debugging-minion-commands.gif)

## Attaching to the Salt Master
Access the Salt Master to run basic salt commands, apply states, and test:

```bash
./master.sh
```
![Attaching to the Salt Master](https://raw.githubusercontent.com/tomwalsh/saltstack-docker-development/main/screenshots/attaching-to-salt-master.gif)

