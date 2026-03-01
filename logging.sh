#!/bin/bash

# Logging variables
LOG_FILE="log.txt"
LOG_LEVEL="INFO"

# Set logging level
case $LOG_LEVEL in
  DEBUG)
    LOG_LEVEL=0
    ;;
  INFO)
    LOG_LEVEL=1
    ;;
  WARNING)
    LOG_LEVEL=2
    ;;
  ERROR)
    LOG_LEVEL=3
    ;;
  CRITICAL)
    LOG_LEVEL=4
    ;;
esac

# Log a message
log_message() {
  local level=$1
  local message=$2
  if [ $level -ge $LOG_LEVEL ]; then
    echo "$(date) [$level] $message" >> $LOG_FILE
  fi
}