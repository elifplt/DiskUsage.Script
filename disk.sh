#!/bin/bash

top_n=10
path=""

while getopts ":n:" opt; do
  case $opt in
    n)
      top_n="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done
shift $((OPTIND-1))

if [ -z "$1" ]; then
  echo "Usage: $0 [-n N] path" >&2
  exit 1
else
  path="$1"
fi

disk_usage=$(du -h "$path" 2>/dev/null | sort -rh)
top_usage=$(echo "$disk_usage" | head -n "$top_n")

echo "Disk Usage Information for $path:"
echo "$disk_usage"
echo "$top_usage"
