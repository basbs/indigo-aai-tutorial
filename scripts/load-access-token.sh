#!/bin/bash
if [ "${BASH_SOURCE[0]}" = "${0}" ]; then
  echo "This script needs to be sourced, not executed directly."
  echo "Please use the 'source' command or '.' to run this script."
  exit 1
fi
export IAM_ACCESS_TOKEN=$(jq -r .access_token ${IAM_CLIENT_RESPONSE_JSON:-/tmp/response})