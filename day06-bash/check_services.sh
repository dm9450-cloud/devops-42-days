#!/bin/bash
# Day 6: args, function, loop, if, exit code
check() {
  if systemctl is-active --quiet "$1"; then echo "OK    $1"; return 0
  else echo "DOWN  $1"; return 1; fi
}
[ $# -eq 0 ] && { echo "usage: $0 service1 service2 ..."; exit 1; }
FAIL=0
for s in "$@"; do check "$s" || FAIL=$((FAIL+1)); done
echo "Down: $FAIL"
exit $FAIL
