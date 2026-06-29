---
title:  "Getting Started With Hyperledger Fabric in Ubuntu 18.04"
date:   2018-07-27 21:00:14 +0530
categories: blogpost
comments: true
tags: [guides, linux]
slug: "getting-started-with-hyperledger-fabric-in-ubuntu-18.04"
---

In this post I will give you clear steps that you can follow to get started with [Hyperledger Fabric](https://hyperledger-fabric.readthedocs.io) quickly in Ubuntu 18.04.

<!--more-->

## Install prerequisites
First.. we need to install some prerequisites: curl, git, docker, docker-compose, golang, nodejs, npm

```bash
sudo apt-get install curl

sudo apt-get install git

sudo apt-get install docker
docker --version    # just to ckeck if it is installed correctly
sudo usermod -a -G docker $USER
sudo systemctl start docker
sudo systemctl enable docker


sudo apt-get install docker-compose
docker-compose --version    # ckeck if it is installed correctly

sudo apt-get install golang
go version # ckeck if it is installed correctly

sudo apt-get install nodejs
node --version

sudo apt-get install npm
npm --version
```

[NOTE: you need to logout and login back in order to use docker without superuser rights]

## Install samples and binaries
Now for installing fabric samples and binaries, they provide a simple script to make your life easy also make the process obfuscated so that we need to put some extra effort to understand what is going on underneath. Anyways, we just want to set up our first fabric sample asap so just do the following:

[NOTE: this will take time as the size of the docker images are pretty large.]

`bash curl -sSL http://bit.ly/2ysbOFE | bash -s 1.2.0`

This will clone fabric-samples in you present working directory which we are going to use in the upcoming steps.


## Building Your First Network
We will be running the first-network sample.


`bash cd fabric-samples/first-network`

Now, we need to generate the certs and genesis blocks. Then start the test network.

```bash
./byfn.sh generate

./byfn.sh up
```

You should see the following upon successful execution:

```bash
 ____    _____      _      ____    _____
/ ___|  |_   _|    / \    |  _ \  |_   _|
\___ \    | |     / _ \   | |_) |   | |
 ___) |   | |    / ___ \  |  _ <    | |
|____/    |_|   /_/   \_\ |_| \_\   |_|
.
.
.
 _____   _   _   ____
| ____| | \ | | |  _ \
|  _|   |  \| | | | | |
| |___  | |\  | | |_| |
|_____| |_| \_| |____/
```


Now bring down the network:
`bash ./byfn.sh down`
