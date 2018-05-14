#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

KOPS_VERSION=1.9.0
KUBECTL_VERSION=1.10.2

mkdir -p ~/bin

curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl ~/bin/kubectl

curl -LO https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64
chmod +x kops
mv kops ~/bin/kops

kubectl version --client
kops version
