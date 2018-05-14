#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

ci/extract_secrets_archive.sh
