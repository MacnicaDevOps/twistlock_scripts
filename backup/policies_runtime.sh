#!/bin/bash

source conf.txt

curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/runtime/container" -o $dir"/policies_runtime_container.yaml"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/runtime/host" -o $dir"/policies_runtime_host.yaml"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/runtime/serverless" -o $dir"/policies_runtime_serverless.yaml"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/runtime/app-embedded" -o $dir"/policies_runtime_app-embedded.yaml"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/runtime/custom-rules" -o $dir"/policies_runtime_custome-rules.yaml"
