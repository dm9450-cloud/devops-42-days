# Day 7: Automation and cron
grep -c, awk {print $1}, sort | uniq -c | sort -rn -> log analysis
sed -i s/old/new/ FILE -> replace in file
find DIR -mtime +7 -delete -> delete old files
tar -czf -> backup
crontab -e / -l -> schedule
*/5 * * * * = every 5 minutes
logrotate -> rotate logs
