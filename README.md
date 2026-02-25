# tjc-tools

真耶穌教會工具集 - Pi Skills Package

## 包含的 Skills

### 1. tjc-sermon（講章研究工具）

根據主題自動收集講章資源：
- 喜信網路家庭 (joy.org.tw) 文章
- 聖靈月刊文章
- YouTube 真耶穌教會影片
- 聖經經文建議（和合本）
- 講章大綱範本

使用方式：
```
/skill:tjc-sermon 聖靈
```

### 2. tjc-poster（海報設計工具）

設計活動邀請卡和海報：
- 多種設計風格（TJC/基督教/創意）
- 多種輸出尺寸（A4/Instagram/Facebook）
- AI 圖片生成（Gemini/Grok/OpenAI）

使用方式：
```
/skill:tjc-poster

活動：2024年聖誕音樂會
地點：台北教會
日期：12/25
```

## 安裝

```bash
pi install https://github.com/vibe-tjc/tjc-tools.git
```

## 配合 Extensions 使用

這些 Skills 可以配合以下 Extensions 獲得更完整的功能：

- [tjc-sermon-generator](https://github.com/vibe-tjc/tjc-sermon-generator) - 講章產生器 Extension
- [pi-poster-designer](https://github.com/vibe-tjc/pi-poster-designer) - 海報設計器 Extension

安裝 Extension：
```bash
pi install git:github.com/vibe-tjc/tjc-sermon-generator
pi install git:github.com/vibe-tjc/pi-poster-designer
```

## 目錄結構

```
tjc-tools/
├── package.json
├── README.md
└── skills/
    ├── tjc-sermon/
    │   ├── SKILL.md
    │   └── scripts/
    │       ├── search-joy.sh
    │       ├── search-youtube.sh
    │       └── get-verses.sh
    └── tjc-poster/
        └── SKILL.md
```

## 常用主題

- 五大教義：聖靈、洗禮、安息日、聖餐、洗腳禮
- 信仰生活：禱告、信心、愛心、盼望、得救
- 教會生活：敬拜、事奉、傳福音、見證
- 家庭教育：家庭、婚姻、教育、親子

## License

MIT
