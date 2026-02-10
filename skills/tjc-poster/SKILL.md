---
name: tjc-poster
description: 設計活動邀請卡和海報。使用 AI 圖片生成（Gemini/Grok/OpenAI）自動產生多種風格的設計草稿，包含真耶穌教會風格、一般基督教風格、創意自由風格。適用於教會活動、佈道會、詩歌音樂會等宣傳設計。
---

# TJC 海報設計工具

為真耶穌教會活動設計邀請卡和海報。

## 功能

1. 根據活動資訊自動產生海報設計
2. 支援多種設計風格
3. 支援多種輸出尺寸
4. 使用 AI 圖片生成服務

## 使用方式

提供活動資訊，我會幫你設計海報：

```
設計海報：
活動名稱：2026年戶外詩歌音樂會
地點：永康教會
日期：2026/3/22
時間：15:30-17:00
主題：耶穌，改變生命的神
```

## 可用風格

### 1. tjc-style（真耶穌教會風格）
- 莊重、典雅、清晰
- 適合教會正式活動
- 使用藍色、白色、金色等色調
- 包含鴿子、聖經、麥穗等元素
- 避免天主教/東正教圖像

### 2. christian-general（一般基督教風格）
- 現代、溫暖、歡迎
- 適合對外佈道活動
- 使用柔和自然的色調
- 包含自然、光線、團契元素

### 3. creative-free（創意自由風格）
- 大膽、創新、吸睛
- 適合青年活動
- 可使用抽象藝術、現代設計
- 視覺衝擊力強

## 可用尺寸

| 尺寸 ID | 名稱 | 像素 | 用途 |
|---------|------|------|------|
| a4 | A4 直式 | 2480×3508 | 列印（300dpi）|
| a4-landscape | A4 橫式 | 3508×2480 | 列印橫式 |
| instagram | IG 方形 | 1080×1080 | Instagram 貼文 |
| instagram-story | IG 限動 | 1080×1920 | Instagram 限時動態 |
| facebook | FB 貼文 | 1200×630 | Facebook 貼文 |

## 可用 AI 模型

### Gemini（預設）
- gemini-2.0-flash-exp-image-generation
- gemini-2.5-flash-preview-image
- imagen-4.0-generate-001（需付費）

設定環境變數：
```bash
export GEMINI_API_KEY="your-api-key"
```

### Grok
- grok-2-image

設定環境變數：
```bash
export GROK_API_KEY="your-api-key"
```

### OpenAI
- dall-e-3
- dall-e-2

設定環境變數：
```bash
export OPENAI_API_KEY="your-api-key"
```

## 使用 design_poster 工具

如果已安裝 pi-poster-designer extension，可直接使用 design_poster 工具：

```
design_poster({
  eventInfo: "活動資訊...",
  styles: ["tjc-style", "christian-general"],
  size: "a4",
  provider: "gemini",
  model: "gemini-2.0-flash-exp-image-generation"
})
```

## 手動生成提示詞

若沒有安裝 extension，可使用以下提示詞模板：

### 真耶穌教會風格

```
Design a professional event poster for True Jesus Church.
Style: Clean, reverent, dignified.
Use appropriate religious imagery that aligns with True Jesus Church values.
Avoid: crosses with human figures, Catholic/Orthodox iconography, overly decorative elements.
Colors: Prefer blue, white, gold, or earth tones.
Include subtle Christian elements like dove, bible, wheat, or simple geometric patterns.

Event details:
[活動資訊]
```

### 一般基督教風格

```
Design an event poster suitable for a Christian church event.
Style: Modern, welcoming, spiritually uplifting.
Include: soft lighting, nature elements, community themes, subtle religious symbols.
Avoid: controversial imagery, denominational-specific symbols.
Colors: Warm and inviting palette.

Event details:
[活動資訊]
```

### 創意自由風格

```
Design a creative and eye-catching event poster.
Style: Bold, innovative, artistic freedom.
Be creative with colors, typography, and visual elements.
Make it memorable and visually impactful.

Event details:
[活動資訊]
```

## 注意事項

1. **中文字體限制**：AI 圖片生成對中文字體支援有限，生成的文字可能有錯誤，需要手動修正
2. **API 費用**：圖片生成會消耗 API 額度，請注意使用量
3. **著作權**：AI 生成的圖片請確認使用授權

## 建議工作流程

1. 提供完整的活動資訊
2. 選擇適合的風格和尺寸
3. 生成多個草稿
4. 選擇最佳設計
5. 使用設計軟體修正文字
6. 最終輸出

## 相關資源

- [Canva](https://www.canva.com) - 線上設計工具
- [Remove.bg](https://www.remove.bg) - 去背工具
- [TinyPNG](https://tinypng.com) - 圖片壓縮
