#!/bin/bash
# Search joy.org.tw for TJC resources
# Usage: ./search-joy.sh "keyword"

KEYWORD="$1"

if [ -z "$KEYWORD" ]; then
    echo "Usage: $0 <keyword>"
    exit 1
fi

ENCODED=$(echo "$KEYWORD" | jq -sRr @uri)
URL="https://joy.org.tw/search.asp?key=$ENCODED"

echo "搜尋喜信網路家庭：$KEYWORD"
echo "網址：$URL"
echo ""

# Use curl to fetch and display results
curl -sL "https://r.jina.ai/$URL" 2>/dev/null | head -100
