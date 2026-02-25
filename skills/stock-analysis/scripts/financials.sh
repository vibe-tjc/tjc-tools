#!/bin/bash
# Fetch quarterly financial data from Yahoo Finance
# Usage: ./financials.sh "AAPL"
#        ./financials.sh "2330.TW"

SYMBOL="$1"

if [ -z "$SYMBOL" ]; then
    echo "Usage: $0 <stock-symbol>"
    echo "Examples: $0 AAPL"
    echo "          $0 2330.TW"
    exit 1
fi

echo "📊 查詢財報數據：$SYMBOL"
echo ""

# Fetch income statement (quarterly)
echo "=== 損益表（季度）==="
URL_INCOME="https://finance.yahoo.com/quote/${SYMBOL}/financials/"
echo "來源：$URL_INCOME"
echo ""

RESULT_INCOME=$(curl -sL "https://r.jina.ai/$URL_INCOME" \
    -H "Accept: text/plain" \
    -H "X-Return-Format: text" \
    2>/dev/null)

if [ -z "$RESULT_INCOME" ]; then
    echo "❌ 無法取得損益表資料"
else
    echo "$RESULT_INCOME" | head -150
fi

echo ""
echo "=== 資產負債表（季度）==="
URL_BS="https://finance.yahoo.com/quote/${SYMBOL}/balance-sheet/"
echo "來源：$URL_BS"
echo ""

RESULT_BS=$(curl -sL "https://r.jina.ai/$URL_BS" \
    -H "Accept: text/plain" \
    -H "X-Return-Format: text" \
    2>/dev/null)

if [ -z "$RESULT_BS" ]; then
    echo "❌ 無法取得資產負債表資料"
else
    echo "$RESULT_BS" | head -100
fi
