---
title: "İlgili revizyonda hangi dosyalar değişti?"
date: 2013-01-20 18:12
tags: log
---
Belirttiğiniz revizyona göre değişen dosyaların adlarını görmek?
READ_MORE

Önce `git log --oneline ` yapalım; `d9808b6`
revizyonunda değişen dosyları görmek için;

```bash
git show d9808b6 --name-status
```

    commit d9808b6bbcd54e2631072fc6a0a53d0cc11f4329
    Author: Uğur Özyılmazel <ugurXXXXXXXXXcom>
    Date:   Mon Jan 14 19:27:55 2013 +0200

        NODE_PATH removed from env file

    M       shell/env

Değişen dosya; **M**odified işareti olan `shell/env`. Eğer `--name-only`
dersek bize dosyanın status’u gelmez. Yani **M** görünmez.
