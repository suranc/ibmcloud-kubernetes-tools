# IBM Cloud Kubernetes Tools

This repo contains some tools to simplify connecting kubectl to an ibmcloud kubernetes clusters.

## Images/

The `images/` directory contains code to build two images.  `ibmcloud` is an image that contains the ibmcloud cli, build upon the latest `ubuntu` image.  `ibmcloud-get-kubeconfig` is an image bulid upon this, that when run interactively will prompt the user for the cluster and login information, to fetch the kubernetes config yml and ca certificate. 

## Fetching the kubeconfig

To fetch the kubeconfig, run the `get-kubeconfig.sh` script.  This will place the kube config files into the `kubeconfig/` directory.

## Configuring local kubectl client

Source the files with `. set-kubeconfig.sh`