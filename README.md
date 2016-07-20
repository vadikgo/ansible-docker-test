# ansible-docker-test

### playbooks list

* build-ansible.yml - build ansible rpm for centos 6 in docker container

* build-centos7-ansible.yml - build ansible rpm for centos 7 in docker container

* buildubuntu-ansible - build ansible deb for ubuntu

* start-ansible-docker.yml - start docker container with ansible on ubuntu

* oracle.yml - install oracle 11.2 in docker container

* oracle-vagrant.yml - install oracle 11.2 in vagrant box

### load roles

`ansible-galaxy install -r requirements.yml -p roles`
