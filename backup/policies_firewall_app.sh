#!/bin/bash

source conf.txt

curl -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/app/container" -o $dir"/policies_firewall_app_container.yaml"
curl -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/app/host" -o $dir"/policies_firewall_app_host.yaml"
curl -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/app/app-embedded" -o $dir"/policies_firewall_app_app-embedded.yaml"
curl -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/app/serverless" -o $dir"/policies_firewall_app_serverless.yaml"
