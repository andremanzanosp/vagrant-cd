sudo yum update -y
sudo yum install -y epel-release
sudo yum -y install python-pip git

sudo usermod -G wheel vagrant

# Install and configure Docker
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo pip install docker-py
sudo usermod -aG docker vagrant
sudo systemctl enable docker.service
sudo systemctl start docker.service

# Install Ansible
sudo yum install -y ansible

ansible-playbook /vagrant/deploy_container.yml

