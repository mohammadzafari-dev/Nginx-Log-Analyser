#!/bin/bash

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$1" | sort | uniq -c | sort -rn | head -5 | awk '{print $2" - "$1" requests"}'

echo ""
echo "Top 5 most requested paths:"
awk '{print $7}' "$1" | sort | uniq -c | sort -rn | head -5 | awk '{print $2" - "$1" requests"}'

echo ""
echo "Top 5 response status codes:"
awk '{print $9}' "$1" | sort | uniq -c | sort -rn | head -5 | awk '{print $2" - "$1" requests"}'

echo ""
echo "Top 5 user agents:"
awk -F'"' '{print $6}' "$1" | sort | uniq -c | sort -rn | head -5
