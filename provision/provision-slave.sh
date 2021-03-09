#!/bin/bash
sudo yum install epel-release bash-completion tree wget curl -y
systemctl stop firewalld
systemctl disable firewalld
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config
#mkdir -p /root/.ssh
#cp -r /redis_vagrant/provision/authorized_keys /root/.ssh
#cp -r /redis_vagrant/provision/id_rsa.pub /root/.ssh
#cp -r /redis_vagrant/provision/sudoers /etc
#cp -r /redis_vagrant/provision/hosts /etc/ 
mkdir -p /root/.ssh
cp  /vagrant/provision/authorized_keys  /root/.ssh
cp  /vagrant/provision/sudoers /etc
cp  /vagrant/provision/hosts /etc/