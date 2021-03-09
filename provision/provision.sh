#!/bin/bash
sudo yum install epel-release bash-completion tree wget curl sftp python-argcomplete -y
systemctl stop firewalld
systemctl disable firewalld
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config
sudo yum install ansible git -y
cd /root
git clone https://github.com/traxito/vagrant_ansible
cp /root/vagrant_ansible/provision/inventario/hosts /etc/ansible
cp /root/vagrant_ansible/provision/ansible.cfg /etc/ansible
mkdir -p /root/.ssh
cp /root/vagrant_ansible/provision/id* /root/.ssh
chmod 600 /root/.ssh/id_rsa
cp /root/vagrant_ansible/provision/hosts /etc/
cp /root/vagrant_ansible/provision/sudoers /etc/
cd ..
git clone https://github.com/traxito/vagrant_redis.git
