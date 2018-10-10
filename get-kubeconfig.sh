#!/bin/bash

# Create kubeconfig directory incase it does not already exist
mkdir -p kubeconfig

docker run -it -v ${PWD}/kubeconfig:/tmp/kubeconfig suranc/ibmcloud-get-kubeconfig:0.1
