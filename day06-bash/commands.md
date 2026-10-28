# Day 6: Bash basics
#!/bin/bash        -> run with bash
VAR=value, "$VAR"  -> variables (no spaces around =)
$1 $2, "$@", $#    -> arguments
$?                 -> last exit code (0 = OK)
if [ ]; then ... fi, for x in ...; do ... done
f() { ...; }       -> function
set -euo pipefail  -> safe scripts
