#!/bin/bash
sudo yum install epel-release bash-completion tree wget curl sftp python-argcomplete -y
systemctl stop firewalld
systemctl disable firewalld
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config
sudo yum install ansible git -y
#mkdir -p /root/.ssh
#cp -r /redis_vagrant/provision/id_rsa /root/.ssh
#cp -r /redis_vagrant/provision/id_rsa.pub /root/.ssh
#chmod 400 /root/id_rsa
#cp -r /redis_vagrant/provision/authorized_keys /root/.ssh
#cp -r /redis_vagrant/provision/ansible.cfg /etc/ansible/
#cp -r /redis_vagrant/provision/hosts /etc/
#cp -r /redis_vagrant/provision/sudoers /etc
#cp -r /redis_vagrant/provision/inventario/hosts /etc/ansible/
cp  /vagrant/provision/inventario/hosts /etc/ansible
cp  /vagrant/provision/ansible.cfg /etc/ansible
mkdir -p /root/.ssh
cp  /vagrant/provision/id*  /root/.ssh
chmod 600 /root/.ssh/id_rsa
cp -r /vagrant/provision/playbook-resueltos  /etc/ansible
cp -r /vagrant/provision/group_vars  /etc/ansible
cp -r /vagrant/provision/host_vars  /etc/ansible
cp -r /vagrant/provision/tasks  /etc/ansible
cp -r /vagrant/provision/templates  /etc/ansible
cp -r /vagrant/provision/vars  /etc/ansible
cp  /vagrant/provision/hosts /etc/
mkdir -p /root/redis_test
cd redis_test
git clone https://github.com/traxito/vagrant_redis.git
