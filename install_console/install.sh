#!/bin/bash

source config.txt

wget $path
tar zxvf $file
$platform"/twistcli console export kubernetes --service-type LoadBalancer --registry-token" $token
kubectl apply -f twistlock_console.yaml | tee twistlock_console_install_result.log
rm -rf $file
