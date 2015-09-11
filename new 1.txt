vagrant-elasticsearch-puppet-cluster
==========================================

Creates a multi-node elasticsearch cluster using Vagrant and puppet on centos

Vagrant file is being used to setup the names and the IPs of the VMs.

Initial configuration includes a 2 nodes cluster with names awesome-search-1 and 
awesome-search-2 and IP addresses 10.0.0.100 and 10.0.0.101

After vagrant up test your cluster by pasting in your browser

> http://10.0.0.100:9200/_cluster/health?pretty=true

And you should see..

````json
{
    "cluster_name": "awesome_search",
    "status": "green",
    "timed_out": false,
    "number_of_nodes": 2,
    "number_of_data_nodes": 2,
    "active_primary_shards": 0,
    "active_shards": 0,
    "relocating_shards": 0,
    "initializing_shards": 0,
    "unassigned_shards": 0
}
````