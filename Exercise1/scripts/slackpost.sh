#!/bin/bash

##Slack Channel POST for Monit Alert

##Variables
data=$1


##Main

/usr/bin/curl -X POST --data-urlencode "payload={\"channel\": \"#webhooks\", \"username\": \"monit-alert\", \"text\": \"$data\", \"icon_emoji\": \":exclamation:\"}" https://hooks.slack.com/services/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
