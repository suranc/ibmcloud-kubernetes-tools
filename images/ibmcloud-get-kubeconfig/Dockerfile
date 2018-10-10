FROM suranc/ibmcloud:0.1

CMD echo -n "Cluster name: " && \
    read cluster && \
    ibmcloud login -a https://api.ng.bluemix.net && \
    mkdir -p /tmp/kubeconfig && \
    cat $(ibmcloud cs cluster-config $cluster|grep export | cut -d'=' -f2) > /tmp/kubeconfig/$cluster.yml && \
    cp $(echo $(ibmcloud cs cluster-config $cluster|grep export | cut -d'=' -f2) | sed "s#/kube-config#/ca#" | sed "s/\.yml/.pem/") /tmp/kubeconfig/
