#!/usr/bin/env bash
set -euxo pipefail

openssl aes-256-cbc -K $encrypted_37d2faef682c_key -iv $encrypted_37d2faef682c_iv -in ci/secrets.tar.enc -out ci/secrets.tar -d

tar xvf ci/secrets.tar

mkdir -p ~/.aws
mkdir -p ~/.kube

mv ci/secrets/aws_config ~/.aws/config
mv ci/secrets/aws_credentials ~/.aws/credentials
