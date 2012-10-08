Tornado and Elasticsearch Example Chef Scripts
==============================================

This is an example Chef script to build out an environment for deploying a Tornado web application on Ubuntu. In this example, we use elasticsearch.

These scripts are all written for use with knife-solo. 

To deploy on fresh EC2 server:

>> knife prepare ubuntu@yourserver.name
>> knife cook ubuntu@yourserver.name
