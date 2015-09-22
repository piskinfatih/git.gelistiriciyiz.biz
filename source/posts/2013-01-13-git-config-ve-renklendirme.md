---
title: "`git-config` ve renklendirme"
date: 2013-01-13 16:23
tags: config,log
---
Renki log mesajları almak için `~/.gitconfig` dosyasında ayarlama yapmak
gerekiyor.
READ_MORE

    [color]
    status = auto
    diff = auto
    branch = auto
    ui = auto

ya da;

```bash
git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto
git config --global color.ui auto
```