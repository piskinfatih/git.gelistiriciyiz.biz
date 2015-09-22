---
title: "Kısa ve öz `git-log`"
date: 2013-01-13 01:41
tags: log
---
Git’de en kısa şekilde log’a bakmak
READ_MORE

```bash
git log --graph --decorate --oneline
```
Bunu `alias` yapabilirsiniz. İster `~/.gitconfig` dosyasını düzenleyin
ister komut satırından ekleyin.

```bash
git config --global alias.logs "log --graph --decorate --oneline"
```

Bu şekilde `git logs` yaparak kullanabilirsiniz.

