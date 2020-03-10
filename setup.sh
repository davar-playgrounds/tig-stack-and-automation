#!/bin/bash

echo "run with root priviledge"

if [ -f "/etc/centos-release" ]; then

    yum upgrade && yum update
    
    #### install git
    yum install git
    
    #### install terraform
    wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip 

    filename=$(ls | grep terraform_*.zip | awk '{print $0}')
    unzip $filename

    mv terraform /usr/local/bin/
    rm $filename
    
    #### install ansible 
    yum install ansible

fi

