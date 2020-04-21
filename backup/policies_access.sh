#!/bin/bash

source conf.txt

curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/docker" -o $dir"/policies_docker.yaml"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/secrets" -o $dir"/policies_secrets.yaml"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/kubernetes-audit" -o $dir"/policies_kubernetes-audit.yaml"
