#!/bin/bash
# Day 5: check a site layer by layer: DNS -> port -> HTTPS
HOST=${1:-google.com}
getent hosts "$HOST" >/dev/null || { echo "DNS FAIL: $HOST"; exit 1; }
nc -z -w 3 "$HOST" 443 || { echo "PORT 443 CLOSED: $HOST"; exit 2; }
CODE=$(curl -s -o /dev/null -w "%{http_code}" "https://$HOST")
echo "OK: $HOST  DNS ok, port 443 open, HTTP $CODE"
