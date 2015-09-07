rem set VAGRANT_LOG=info
set CLUSTER_COUNT=3
set CLUSTER_NAME='elasticsearch_cluster'
rem set CLUSTER_IP_PATTERN='172.16.15.%d'
rem vagrant up|tee vagrant_up.log
rem vagrant up --provision
vagrant up

rem http://10.0.0.11:9200/_plugin/head/
