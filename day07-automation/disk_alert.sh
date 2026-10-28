#!/bin/bash
# Day 7: alert when / crosses the limit
LIMIT=${1:-80}
USED=$(df / --output=pcent | tail -1 | tr -dc '0-9')
if [ "$USED" -ge "$LIMIT" ]; then echo "$(date) ALERT: disk ${USED}%"; exit 1; fi
echo "$(date) OK: disk ${USED}%"
