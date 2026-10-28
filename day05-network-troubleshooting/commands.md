# Day 5: Network troubleshooting
nc -zv HOST PORT  -> is port open?
curl -v / -w      -> HTTP details, timings
traceroute HOST   -> path, where it stops
ss -tlnp          -> listening ports
refused = port closed, timeout = firewall/SG
ssh -v            -> debug ssh login
