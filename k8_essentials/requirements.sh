#!/bin/sh
set -e

#to install cfssl
wget -q --show-progress --https-only --timestamping \
  https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \
  https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
chmod +x cfssl_linux-amd64 cfssljson_linux-amd64
mv cfssl_linux-amd64 /usr/local/bin/cfssl
mv cfssljson_linux-amd64 /usr/local/bin/cfssljson

#to install kubectl
wget https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/

#to install helm
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.7.0-linux-amd64.tar.gz
tar -zxvf helm-v2.7.0-linux-amd64.tar.gz 
mv linux-amd64/helm /usr/local/bin/helm
rm helm-v2.7.0-linux-amd64.tar.gz
rm -rf linux-amd64

exec "$@"
