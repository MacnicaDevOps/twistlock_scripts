#!/bin/bash

source config.txt

curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/network/container" -o $dir"/policies_firewall_network_container.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/network/host" -o $dir"/policies_firewall_network_host.json"
curl -k -u $cred -H "Content-Type:application/json" -X GET $source"/api/v1/policies/firewall/network/entities" -o $dir"/policies_firewall_network_entities.json"
