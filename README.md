THE DOCK-FATHER for Raspberry Pi
==================================
![Dock-Father](https://raw.github.com/Adamossenford/dock-father/master/pix/dock-father.png)


Getting Started
===============

DEPENDENCIES

* This assumes you have flashed your raspberry pi with the [Hypriot flash tool](https://github.com/hypriot/flash)

* You will need to add the names you used in the flash tool to the file nodenames.txt.  currently it has 4 entries which are master, node1, node2, node3.  Make sure you follow this name convention when using dockfather.  Add nodes as you wish to scale the cluster

* You will need to have ansible installed.  
* Mac Users
```
brew install ansible
```
* Non mac users [VISIT ANSIBLE](http://docs.ansible.com/ansible/intro_installation.html)
* clone the repo and change into the new directory
```
git clone https://github.com/AdamOssenford/dock-father.git
cd dock-father
```
* ADD YOUR PUBLIC KEY TO roles/common/files/public_key.txt 
Usage Examples
==============
* bootstrap your raspberry pi2 and launch a swarm cluster
```
./dock-father.sh
```
* launch a swarm cluster only
```
./swarm-only.sh
```

About the Dock-Father
==============================
This script was written to make it easy enough for anyone to go from fresh hypriot install on Raspberry pi2 to running a docker-swarm as easy as possible.  This script should populate the Ansible inventory file based off the .local dns and then run the installation of packages, upgrade docker to 1.8.1 and start a swarm cluster.  

Thank You 
=========
The following is a list of contributors, inspirations, code examples, and developers who assisted in making this possible

* [Rick Bryce - The Ansible Jedi](http://www.github.com/dicbob)
* [Hypriot](http://blog.hypriot.com)
* [dontrebootme](http://www.github.com/dontrebootme)
* [SecKC](http://www.seckc.org)
* [Ansible](http://www.ansible.com)

TO DO
=======
* this needs to be setup with TLS and certificates
* in the docs directory is a script that shows all commands to generate the certificates needed to run the swarm of TLS
* ports will most likely change to 2376 to reflect TLS
* the dockeropts file /etc/default/docker did not handle the docker launch with the TLS certs.  The startup scripts will have to be recreated and possibly deployed via the ansible role for swarm
