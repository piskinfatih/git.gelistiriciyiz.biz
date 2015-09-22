---
title: "Commit’leri sayalım"
date: 2013-01-16 11:31
tags: log
---
Acaba projenizde **kim** kaç **commit** yaptı?
READ_MORE

```bash
git shortlog -s -n
```

Gelen sayfada commit adedi ve kimin yaptığını görebilirsiniz.

    75  Uğur Özyılmazel

Eğer bu işi, kişi ayırmadan yapmak istiyorsak:

```bash
git --no-pager log --oneline | wc -l
```
