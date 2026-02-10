#!/bin/bash
# Search YouTube for TJC videos
# Usage: ./search-youtube.sh "keyword"

KEYWORD="$1"

if [ -z "$KEYWORD" ]; then
    echo "Usage: $0 <keyword>"
    exit 1
fi

SEARCH_QUERY="真耶穌教會 $KEYWORD"
ENCODED=$(echo "$SEARCH_QUERY" | jq -sRr @uri)
URL="https://www.youtube.com/results?search_query=$ENCODED"

echo "搜尋 YouTube：$SEARCH_QUERY"
echo "網址：$URL"
echo ""

# Use curl to fetch and display results
curl -sL "https://r.jina.ai/$URL" 2>/dev/null | grep -E "\[.*\]\(https://www.youtube.com/watch" | head -10
