#!/bin/bash
# set -e
# Check if the script is being sourced
if [ "${BASH_SOURCE[0]}" = "${0}" ]; then
  echo "This script needs to be sourced, not executed directly."
  echo "Please use the 'source' command or '.' to run this script."
  exit 1
fi
export IAM_REFRESH_TOKEN=$(jq -r .refresh_token ${IAM_CLIENT_RESPONSE_JSON:-/tmp/response})