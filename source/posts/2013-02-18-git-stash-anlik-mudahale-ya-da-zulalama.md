---
title: "`git stash` anlık müdahale ya da zulalama"
date: 2013-02-18 22:30
tags: stash
---

Tam işin ortasındasınız ve `commit` yapmak istemiyorsunuz. 
Değişikleri de kaybetmek istemiyorsunuz. Peki ne yapmak lazım?
READ_MORE

İşte `git stash` burada devreye giriyor. Yapmanız gereken:

```bash
git stash save
```

ve

    Saved working directory and index state WIP on master: 423eaf4 init
    HEAD is now at 423eaf4 init

gibi bir mesaj göreceksiniz. `ls -al` ile directory’e baktığınızda, eklediğiniz
ama `commit` etmediğiniz dosyaları göremeyeceksiniz. Sakın paniklemeyin.
Bu dosyalar artık **ZULA**’da yani `stash`de...

Çalışmaya devam edin, işlerinizi tamamlayın ve kaldığınız yere gere dönmek
için:

```bash
git stash pop
```

yapmanız yeterli. Acaba zulada neler var? Bunun için;

```bash
git stash list
```

yapabilirsiniz.