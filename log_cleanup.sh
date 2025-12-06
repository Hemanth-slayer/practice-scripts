
#!/bin/bash

LOG_DIR="/var/log"
DAYS=5

echo "Cleaning logs older than $DAYS days from $LOG_DIR..."
find "$LOG_DIR" -type f -mtime +$DAYS -exec rm -f {} \;
echo "Log cleanup completed!"
