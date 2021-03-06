#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

source ci/secrets/cloud1.env.sh
kops export kubecfg --name kube-usea1-220b026b.k8s.local

forge --profile=prd deploy
