#!/bin/bash

## Script to complete port scan on pre-defined ports
## 25, 80, 8080, 8999
## against IP address passed as variable

##VARIABLES
ports="25,80,8080,8999"
targethost=$1

##MAIN
echo "Testing ports $ports against host $targethost"

nmap $targethost -p$ports
