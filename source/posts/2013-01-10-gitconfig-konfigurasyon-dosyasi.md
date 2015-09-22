---
title: "`gitconfig` - konfigürasyon dosyası"
date: 2013-01-10 23:31
tags: config
---
Konfigürasyon dosyası **3 farklı** lokasyonda bulunabilir.
READ_MORE

## .git/config

Repository bazında ayar için kullanılır. Sadece bulunduğu repository’i 
etkiler.

## ~/.gitconfig

Kullanıcı bazında ayar içindir. Kullanıcının `$HOME` dizini altında 
durur.

## /etc/gitconfig

Tüm sistemi kapsayan ayar dosyasıdır. (*System-wide*) İlgili işletim
sistemindeki tüm kullanıcıları da etkiler. `$HOME/.gitconfig`
(*Yani kullanıcı bazında ayar*) dosyasına komut satırından ekleme / düzenleme
yapmak için `--global` opsiyonunu kullanabilirsiniz.

Eğer `--global` kullanmazsanız bu; **Repository** bazında ayar yaptınız
anlamına gelir ve sadece `.git/config` dosyasına yazılır.

```bash
# kullanıcı bazında
git config --global user.name "Kullanıcı Adı"
git config --global user.email "kullanici@eposta.com"

# repo bazında
git config user.name "Kullanıcı Adı"
git config user.email "kullanici@eposta.com"

# konfigürasyonu göster
git config -l
```

## Değişkeni silmek

```bash
git config --unset user.email
# user.email’i sildik / repo bazında

git config --unset --global user.email
# user.email’i sildik / user bazında
```