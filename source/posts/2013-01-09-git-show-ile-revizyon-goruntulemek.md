---
title: "`git-show` ile revizyon görüntülemek"
date: 2013-01-09 01:49
tags: browse
---
Acaba **2 commit önceki** `index.html` ’in durumu neydi? Bunun için;
READ_MORE

```bash
git show REVISON:/path/to/file
```
kullanıyoruz.

```bash
git show HEAD~2:index.html     # 2 commit önce
git show HEAD~1:index.html     # son commit
```

Hatta aynı işlemi, **SHA** için de yapabiliriz. yani `42bc7e2` 
commit’indeki durum neydi?

```bash
git show 42bc7e2:index.html
```

İsterseniz daha da detaya inebilirsiniz;

```bash
git show HEAD@{1.minute.ago}:index.html     # 1 dakika önce
git show HEAD@{10.minutes.ago}:index.html   # 10 dakika önce
git show HEAD@{1.month.ago}:index.html      # 1 ay önce
```
