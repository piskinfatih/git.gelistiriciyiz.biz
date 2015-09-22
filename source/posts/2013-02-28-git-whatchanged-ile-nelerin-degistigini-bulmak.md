---
title: "`git-whatchanged` ile nelerin değiştiğini bulmak"
date: 2013-02-28 22:41
tags: log
---

Commit’ler arasında kaybolduğunuzda bir çırpıda nelerin değiştini 
görmek istemez misiniz?
READ_MORE

```bash
git whatchanged --oneline
```

Örnek çıktı:

    4fae319 Due to nano config issues, i uninstalled nano from brew:
    :100644 100644 9e98075... d293000... M  rc/nanorc
    :100644 100644 119a5a3... aca0127... M  shell/alias
    8c9e2ba nanorc fix
    :100644 100644 0119faf... 9e98075... M  rc/nanorc

```bash
git whatchanged --oneline -n 5  # son 5 commit
```
