#!/bin/bash

source conf.txt

curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/compliance/container" -o $dir"/policies_compliance_container.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/compliance/host" -o $dir"/policies_compliance_host.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/compliance/serverless" -o $dir"/policies_compliance_serverless.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/trust" -o $dir"/policies_trust.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/custom-compliance" -o $dir"/custom-compliance.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/cloud-platforms" -o $dir"/policies_cloud-platforms.json"
