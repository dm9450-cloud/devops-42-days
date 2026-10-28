#!/bin/bash
# Day 7: backup a folder with date, keep 7 days
SRC=${1:-$HOME/devops-42-days}; DEST=$HOME/backups; mkdir -p "$DEST"
tar -czf "$DEST/backup-$(date +%F).tar.gz" -C "$(dirname "$SRC")" "$(basename "$SRC")"
find "$DEST" -name 'backup-*.tar.gz' -mtime +7 -delete
echo "Backup done: $(ls "$DEST" | tail -1)"
