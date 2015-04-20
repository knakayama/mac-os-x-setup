#!/bin/bash

LOG_DIR="${HOME}/.tmuxlog"
LOG_FILE="${LOG_DIR}/compress-tmux-log.log"

[[ -d "$LOG_DIR" ]] || mkdir "$LOG_DIR"

echo "[START] $(date '+%Y/%d/%m %H:%M:%S')" >> "$LOG_FILE"

for log_file in $(find "$LOG_DIR" -type f | perl -lne 'print if /\.log$/'); do
    echo "$log_file" | grep -qF 'compress-tmux-log.log' && continue
    /usr/sbin/lsof "$log_file" >/dev/null 2>&1 && continue
    echo "$log_file" >> "$LOG_FILE"
    gzip "$log_file"
done

echo "[END] $(date '+%Y/%d/%m %H:%M:%S')" >> "$LOG_FILE"

