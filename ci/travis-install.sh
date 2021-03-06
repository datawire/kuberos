#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

KOPS_VERSION=1.9.0
KUBECTL_VERSION=1.10.2
FORGE_VERSION=0.4.12

mkdir -p ~/bin

curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl ~/bin/kubectl

curl -LO https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64
chmod +x kops-linux-amd64
mv kops-linux-amd64 ~/bin/kops

curl -L \
    --output /tmp/forge \
    https://s3.amazonaws.com/datawire-static-files/forge/${FORGE_VERSION}/forge?x-download=datawire

mv /tmp/forge ~/bin/forge
chmod +x ~/bin/forge

forge --version
kubectl version --client
kops version
