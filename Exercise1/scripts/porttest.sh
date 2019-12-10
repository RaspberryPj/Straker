#!/bin/bash

##Variables
testhost=$1
testport=$2

##OPT - MESSAGES
#echo "Testing port $testport against host $testhost"

##Main
result=1

###Comment - Report Status only but no detail
#result=`if /usr/bin/nc -z $testhost $testport 2>/dev/null; then echo 0; else echo 1; fi`

###Commnet - Report detail and return status
testresult=`/usr/bin/nc -z $testhost $testport 2>&1`
if [[ $testresult =~ "succeeded" ]]
then
   echo $testresult
   result=0
else
   echo "Connection to $testhost port $testport failed (expected)"
fi

##RETURN
exit $result
