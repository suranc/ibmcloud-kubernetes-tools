#!/bin/bash

docker run -it -v ${PWD}/kubeconfig:/tmp/kubeconfig suranc/ibmcloud-get-kubeconfig:0.1