#!/usr/bin/env bash

# update apt
sudo yum update

# install screen
sudo yum install screen -y

# install java
sudo yum install java-1.7.0-openjdk.x86_64 -y

# install elasticsearch
sudo rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
sudo cat >/etc/yum.repos.d/elasticsearch.repo <<EOF
[elasticsearch-1.7]
name=Elasticsearch repository for 1.7.x packages
baseurl=http://packages.elastic.co/elasticsearch/1.7/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF
sudo yum install elasticsearch -y

# install head
sudo /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head

# install marvel
sudo /usr/share/elasticsearch/bin/plugin -install elasticsearch/marvel/latest

# Restart elasticsearch service
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
sudo /bin/systemctl start elasticsearch.service
