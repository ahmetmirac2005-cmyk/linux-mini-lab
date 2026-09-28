#!/bin/bash
mkdir -p ~/backups
cp -r /etc/nginx ~/backups/nginx_backup_$(date +%Y%m%d_%H%M%S)
echo "Yedekleme tamamlandı: $(date)"
