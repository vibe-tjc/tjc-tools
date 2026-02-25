#!/bin/bash
# Fetch company profile from Yahoo Finance
# Usage: ./company-profile.sh "AAPL"
#        ./company-profile.sh "2330.TW"

SYMBOL="$1"

if [ -z "$SYMBOL" ]; then
    echo "Usage: $0 <stock-symbol>"
    echo "Examples: $0 AAPL"
    echo "          $0 2330.TW"
    exit 1
fi

URL="https://finance.yahoo.com/quote/${SYMBOL}/profile/"

echo "📊 查詢公司資料：$SYMBOL"
echo "來源：$URL"
echo ""

# Use jina.ai reader to fetch and parse the page
RESULT=$(curl -sL "https://r.jina.ai/$URL" \
    -H "Accept: text/plain" \
    -H "X-Return-Format: text" \
    2>/dev/null)

if [ -z "$RESULT" ]; then
    echo "❌ 無法取得資料，請確認股票代號是否正確"
    exit 1
fi

echo "$RESULT" | head -150
