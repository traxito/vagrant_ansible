# vagrant_ansible
1 master and 2 nodes with Ansible and Centos 7

Steps:

Enable hyperv on windows machine

Use default switch.

Do not try to copy from PC, just upload in github and then clone it.

It is impossible to set up a Fixed IP for machines due to Hyperv limitations. Check the ip on the machine deploy.

To create the machines, use:

vagrant up --provider=hyperv

You can check the status of your machine on Hyper-v Manager:

![image](https://user-images.githubusercontent.com/58102601/110521636-41e63d80-8110-11eb-8090-ff42de87c007.png)

