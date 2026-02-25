#!/bin/bash
# Fetch real-time stock quote from Yahoo Finance
# Usage: ./quote.sh "AAPL"
#        ./quote.sh "2330.TW"

SYMBOL="$1"

if [ -z "$SYMBOL" ]; then
    echo "Usage: $0 <stock-symbol>"
    echo "Examples: $0 AAPL"
    echo "          $0 2330.TW"
    exit 1
fi

URL="https://finance.yahoo.com/quote/${SYMBOL}/"

echo "💰 查詢即時報價：$SYMBOL"
echo "來源：$URL"
echo ""

# Use jina.ai reader to fetch quote data
RESULT=$(curl -sL "https://r.jina.ai/$URL" \
    -H "Accept: text/plain" \
    -H "X-Return-Format: text" \
    2>/dev/null)

if [ -z "$RESULT" ]; then
    echo "❌ 無法取得報價，請確認股票代號是否正確"
    exit 1
fi

echo "$RESULT" | head -100
