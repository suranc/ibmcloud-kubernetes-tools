#!/bin/bash

set -e

# Get cluster from user
echo -n "Cluster name: "
read cluster

# Log in session to ibmcloud
ibmcloud login -a https://api.ng.bluemix.net

# Get cluster yml and ca certificate and put in our /tmp/kubeconfig handoff directory
mkdir -p /tmp/kubeconfig
cat $(ibmcloud cs cluster-config $cluster|grep export | cut -d'=' -f2) > /tmp/kubeconfig/$cluster.yml
cp $(echo $(ibmcloud cs cluster-config $cluster|grep export | cut -d'=' -f2) | sed "s#/kube-config#/ca#" | sed "s/\.yml/.pem/") /tmp/kubeconfig/