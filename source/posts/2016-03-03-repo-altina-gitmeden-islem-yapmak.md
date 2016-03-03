---
title: Repo altına gitmeden işlem yapmak
date: Mar 03, 2016 10:24
tags: core
---

`git` ile işlem yapmak için artık repository dizini altına gitmenize
gerek yok.READ_MORE

Yapmanız gereken tek şey `-C` seçeneğini kullanmak;

```bash
git -C /path/to/git/repo status
git -C /path/to/git/repo add .
git -C /path/to/git/repo commit -m "Update"
```