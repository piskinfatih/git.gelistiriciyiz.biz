---
title: "Sayfalama (paging) yapmadan tüm log’u almak"
date: 2013-01-16 11:25
tags: log
---
Sayfalama yapmadan tüm log’u görüntülemek için;
READ_MORE

```bash
git --no-pager log --oneline
```

Eğer log alırken `--no-pager` kullanırsanız tüm log’u biranda almış
olursunuz.
