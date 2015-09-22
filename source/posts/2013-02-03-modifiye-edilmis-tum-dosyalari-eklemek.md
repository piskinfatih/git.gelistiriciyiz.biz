---
title: "Modifiye edilmiş tüm dosyaları eklemek"
date: 2013-02-03 19:10
tags: config,alias
---
Tek hareketle modifiye edilen dosyaları eklemek.
READ_MORE

```bash
git status -sb | grep -e "^ M " | awk "{ print $2 }" | xargs git add
```

Hemen `alias` oluşturalım:

```bash
git config --global alias.add-modified '!git status -sb | grep -e "^ M " | awk "{ print $2 }" | xargs git add'
```

Bu işlemin ardından;

```bash
git add-modified
```

şeklinde kullanabiliriz!
