#!/bin/bash

source jwt_functions.sh
jwt $(jq -r .refresh_token ${IAM_CLIENT_RESPONSE_JSON:-/tmp/response})
