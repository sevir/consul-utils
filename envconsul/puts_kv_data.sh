#!/bin/bash

curl \
    --header "X-Consul-Token: b2f37c46-dd56-4b0b-84d7-60694b9f0a71" \
    --request PUT \
    --data 'world' \
    http://127.0.0.1:8500/v1/kv/env_test/hello
    