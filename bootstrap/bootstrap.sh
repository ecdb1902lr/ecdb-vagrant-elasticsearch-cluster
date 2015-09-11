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

# Install elasticsearch latest version puppet module
sudo puppet module install elasticsearch-elasticsearch

# Start elasticsearch service

echo "### NOT starting on installation, Configure elasticsearch service to start automatically using systemd"
echo " sudo systemctl daemon-reload"
sudo systemctl daemon-reload
echo " sudo systemctl enable elasticsearch.service"
sudo systemctl enable elasticsearch.service
echo "### You can start elasticsearch service by executing"
echo " sudo systemctl start elasticsearch.service"
sudo systemctl start elasticsearch.service

# How to stop elasticsearch service
echo "### To stop elasticsearch service do the following:"
echo "systemctl --no-reload stop elasticsearch.service"
echo "### OR the following:"
echo "/etc/init.d/elasticsearch stop"

# How to get the status of the elasticsearch service
echo "### To status elasticsearch service do the following:"
echo "/etc/init.d/elasticsearch status"
