#!/usr/bin/env bash

tar -c -v -f ci/secrets.tar \
    ci/secrets/*

travis encrypt-file ci/secrets.tar ci/secrets.tar.enc
