#!/bin/bash
# Fetch recent news for a stock from Yahoo Finance
# Usage: ./stock-news.sh "AAPL"
#        ./stock-news.sh "2330.TW"

SYMBOL="$1"

if [ -z "$SYMBOL" ]; then
    echo "Usage: $0 <stock-symbol>"
    echo "Examples: $0 AAPL"
    echo "          $0 2330.TW"
    exit 1
fi

URL="https://finance.yahoo.com/quote/${SYMBOL}/news/"

echo "📰 查詢近期新聞：$SYMBOL"
echo "來源：$URL"
echo ""

# Use jina.ai reader to fetch news
RESULT=$(curl -sL "https://r.jina.ai/$URL" \
    -H "Accept: text/plain" \
    -H "X-Return-Format: text" \
    2>/dev/null)

if [ -z "$RESULT" ]; then
    echo "❌ 無法取得新聞，請確認股票代號是否正確"
    exit 1
fi

echo "$RESULT" | head -200
