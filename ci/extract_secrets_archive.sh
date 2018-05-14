#!/usr/bin/env bash
set -exo pipefail

tar xvf ci/secrets.tar

mkdir -p ~/.aws
mkdir -p ~/.kube

mv ci/secrets/aws_config ~/.aws/config
mv ci/secrets/aws_credentials ~/.aws/credentials
