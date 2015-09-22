---
title: "Hash ID olmadan checkout yapmak"
date: 2015-01-12 14:15
tags: branch
---

Kısa ya da uzun **hash** kullanmadan, log’da yazan **commit** mesajları
içindeki metne göre `checkout` yapmak mümkün! Örneğin aşağıdaki gibi
bir log durumu olsun:
READ_MORE

```bash
git log --graph --decorate --oneline
```

```bash
* 8643f71 (HEAD, origin/master, origin/HEAD, master) readme.md - update
* ef7e0db git-add-push-all disabled
* fef4371 prompt fixes
* fb49e9e fix for non-interactive shell
* 0f6f2cb fix
* e3460e8 TextEdit tweaks
* a75df2d ackrc added
* 862543f wrong file deleted
* 4fdbd74 screenshot added
* 2a67e32 readme.md - update
* caa8496 readme.md - update
* e0fc16a ubuntu installation
* b578f53 PS1 for Linux
* 8c636ac ubuntu specific
* 34662bc readme.md - update
* a5eb0d9 osx tweaks
* 459e1ee PS1 color tests
* b77b4ff mini colorization on PS1
```

Şimdi `a5eb0d9` numaralı hash’e gitmek için `git checkout a5eb0d9` yerine:

```bash
git checkout :/"osx tweaks"
```

yapabiliriz. Dikkat ettiyseniz içinde **tweaks** geçen birden fazla 
log mesajı var. Eğer;

```bash
git checkout :/"tweaks"
```

dersek, bize en yakın olan, içinde **tweaks** geçen log’un bulunduğu
revizyona checkout ederiz:

```bash
HEAD is now at e3460e8... TextEdit tweaks
```

mesajını görürüz. Sonuç olarak `:/"ARANACAK KELİME"` şeklinde kullanabiliriz.
Buradan da şunu anlıyoruz, commit mesajları ne kadar anlamlı ve düzgün
yazılırsa o kadar faydalı oluyor :)
