---
title: "SHA1 görüntülemek (kısa)"
date: 2013-01-12 23:12
tags: log,rev-parse
---

İçinde bulunduğunuz `branch`’in en son revizyonuna ait kısa **SHA1**’ini
görüntülemek için;
READ_MORE

```bash
git rev-parse --short HEAD
```
Eğer uzun halini görmek isterseniz;

```bash
git rev-parse HEAD
```

Eğer `HEAD` yerine başka bir versionu görmek isterseniz;

```bash
git rev-parse --short HEAD~4
git rev-parse --short HEAD@{1.month.ago}   # 1 ay önce
```

<div class="full zoomable"><img src="http://36.media.tumblr.com/ff669f14b3f939b74c873c9738602c5d/tumblr_mgl9nsEsSR1s3r5wmo1_1280.png" alt="Kısa SHA"></div>

