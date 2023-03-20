FROM alpine

RUN cd /tmp && \
    wget https://download.clis.cloud.ibm.com/ibm-cloud-cli/2.13.0/IBM_Cloud_CLI_2.13.0_amd64.tar.gz && \
    tar -xzf /tmp/IBM_Cloud_CLI_2.13.0_amd64.tar.gz && \
    /tmp/Bluemix_CLI/install && \
    rm -rf /tmp/Bluemix_CLI /tmp/IBM_Cloud *
