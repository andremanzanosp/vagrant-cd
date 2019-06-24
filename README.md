
# vagrant-cd

This is a simple continuos deploy example, meant to exercise devops work. It may be used for development environment.
It has a Golang app inside 'docker-goapp' listening to port 8080.

The intention here is to create a virtual machine using Vagrant, and inside this virtual machine run docker container with the Golang app.
On your desktop, you should be able to access it from http and https.
After you edit the source code and save it, it should build and republish the content automaticaly.
It is not realtime, since it has to compile the app first, but it shouldn't take more than a minute.


IMPORTANT: This project is not intend to production environment, since it is not tunned for security.


## Dependencies:

* [Vagrant](https://www.vagrantup.com/)


## Usage

First of all, you have to install Vagrant

Clone the repository
```
$ git clone https://github.com/andremanzanosp/vagrant-cd.git
```

Start vagrant
```
$ vagrant up
```

* It may ask for Admin password, for mounting NFS shared folder
* It can take a while, since it is going to download a bunch of things
* It should build and start docker containers


If you want to connect to vm created by vagrant use or use option -c to run a single command
```
$ vagrant ssh
```


Check if containers are running
```
$ vagrant ssh -c "docker ps"
```


For starting or stop containers inside vagrant use commands respectively (Remember it is going to start automaticaly at boot)
```
$ vagrant ssh -c "/usr/bin/ansible-playbook /etc/ansible/deploy-containers.yml"

$ vagrant ssh -c "/usr/bin/ansible-playbook /etc/ansible/remove-containers.yml"
```


Example of started containers
```
$ vagrant ssh -c "docker ps"
CONTAINER ID        IMAGE                       COMMAND                  CREATED             STATUS              PORTS                  NAMES
a86d28c342bf        outrigger/https-proxy:1.0   "/init"                  2 minutes ago       Up 2 minutes        0.0.0.0:443->443/tcp   proxy
fbe778ac375d        goapp                       "/bin/sh -c 'make st…"   2 minutes ago       Up 2 minutes        0.0.0.0:80->8080/tcp   goapp
Connection to 127.0.0.1 closed.
```


---

## Access browser

Since we have difined vagrant to start with ip 192.168.33.10, we are going to use it.

- [http://192.168.33.10/](http://192.168.33.10/) 

- [https://192.168.33.10/](https://192.168.33.10/)


---

## TODO

- Use names instead ips
- Create tests for Go app


