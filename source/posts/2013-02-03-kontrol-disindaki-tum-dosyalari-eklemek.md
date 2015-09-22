---
title: "Kontrol dışındaki tüm dosyaları eklemek"
subtitle: "Un-tracked dosyaları tek hareketle ekleyin!"
date: 2013-02-03 18:58
tags: config
---
Track edilmeyen dosyaları tek hareketle eklemek:
READ_MORE

```bash
git status -sb | grep -e '^??' | awk '{ print $2 }' | xargs git add
```
Her seferinde bu uzun komutu yazmak yerine, hemen bir `alias` 
oluşturuyoruz. `~/.gitconfig` dosyasını açarak ya da direk 
komut satırından;

```bash
git config --global alias.add-untracked '!git status -sb | grep -e "^??" | awk "{ print $2 }" | xargs git add'
```

yapabilirsiniz. Bu işlemin ardından;

```bash
git add-untracked
```

yapmanız mümkün!
