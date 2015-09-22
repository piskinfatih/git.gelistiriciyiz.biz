---
title: "`git-log` ve `less` ile ilgili sorun"
date: 2013-01-14 01:08
comments: true
tags: log
---
Git ve Unix komutu less arasında bazen sorun olabiliyor!
READ_MORE

Renkli log çıktılarında ilk satırı görmüyor ya da kaybediyorsanız bu
sistemdeki `less` komutunun konfigürasyonu ile ilgilidir. Bunu düzeltmek için
`~/.gitconfig` dosyasında `core.pager` bölümüne müdahale etmek gerekir:

    [core]
    pager = less -FRX

ya da direk komut satırından da yapabilirsiniz:

```bash
git config --global core.pager "less -FRX"
```

hatta `less` yerine `cat` kullanabilirsiniz. Aslında istediğiniz herhangi
bir **unix** komutunu kullanabilirsiniz.

```bash
git config --global core.pager cat
```
