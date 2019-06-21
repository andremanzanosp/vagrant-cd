
# vagrant-cd

This is a simple continuos deploy example, meant to exercise devops work. It may be used for development environment.
It has a Golang app inside 'docker-goapp' listening to port 8080.

The intention here is to create a virtual machine using Vagrant, and inside this virtual machine run docker container with the Golang app.
On your desktop, you should be able to access it from http and https.

Ps: This project is not intend to production environment, since it is not tunned for security.


## Dependencies:

* [Vagrant](https://www.vagrantup.com/)


## Usage

First of all, you have to install Vagrant

Clone the repository
```
git clone https://github.com/andremanzanosp/vagrant-cd.git
```

Start vagrant
```
vagrant up
```

* It may ask for Admin password, for mounting NFS shared folder
* It can take a while, since it is going to download a bunch of things
* It should build and start docker containers



---

## Access browser

Since we have difined vagrant to start with ip 192.168.33.10, we are going to use it.

- [http://192.168.33.10/](http://192.168.33.10/) 

- [https://192.168.33.10/](https://192.168.33.10/)


---

## TODO

- Use names instead ips
- Create tests for Go app


