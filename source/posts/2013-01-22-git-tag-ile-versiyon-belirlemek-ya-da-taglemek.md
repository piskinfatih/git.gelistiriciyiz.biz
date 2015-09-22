---
title: "`git-tag` ile versiyon belirlemek ya da Tag’lemek"
date: 2013-01-22 22:50
tags: tag,rev-parse
---
Revizyonu etiketlemek çok işe yarıyabilir. Belirleyeceğiniz etikete ya da
versiyona kolay geri dönebilirsiniz. Etiketlemek ya da **tag**’lemek 
değişik yollarla mümkün.
READ_MORE

```bash
git tag ETİKET
# o anki revizyona etiketi’i oluştur

git tag -a ETİKET -m "Mesaj"
# ya da

git tag -m "Mesaj" ETİKET SHA1
```

İkinci örnek bence daha pratik. İstediğiniz bir revizyona etiket
atayabilirsiniz. Repodaki etiketleri;

```bash
git tag
```

listeleyebilirsiniz. Her zaman olduğu gibi örnek projeye bakalım:

```bash

# git@github.com:sinatra/sinatra.git
git tag
```
    
    v1.4.0
    v1.4.0.a
    v1.4.0.b
    v1.4.0.c
    v1.4.0.d
    v1.4.1
    v1.4.2
    v1.4.3
    v1.4.4
    v1.4.5
    v1.4.6

```bash
git rev-parse v1.4.6
# b186cd568aa12b247c06366d433fb34bc28195d6

git cat-file -p b186cd # SHA1’in ilk 6 harfi de kullanılabilir
```

    tree 94b7d778023eb9cfabfdd56506682b56f53f071b
    parent ca5b2f163a82346032e98098208f85982e8f8399
    author Zachary Scott <e@zzak.io> 1427164161 -0700
    committer Zachary Scott <e@zzak.io> 1427164161 -0700

    Commit was reverted in ca5b2f163a82346032e98098208f85982e8f8399

`tag` ile ilgili pek çok şeyi görebiliyoruz.

Aynı **branch** gibi çalışan tag’lere de `checkout` etmek mümkün. Zaten bu
versiyonlama durumu da burada işe yarıyor. Örnek projede istediğimiz bir
tag’a geçiş yapalım:

    git checkout v1.4.4

karşımıza şu mesaj çıkar:

    Note: checking out 'v1.4.4'.

    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.

    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:

      git checkout -b new_branch_name

    HEAD is now at a7d8891... v1.4.4

Bu durumda eğer `.git/HEAD` dosyasına bakarsanız, **ref** bilgisi yerine
revizyon bilgisini görürsünüz yani `a7d88914ab67f5470d4d55de63a2eff284af4871`

Eğer isterseniz, bulunduğunuz noktadan başka bir **branch**
oluşturabilirsiniz:

```bash
git checkout -b BRANCH_İSMİ
# BRANCH_İSMİ adında branch oluştur ve bu branch’e geç
```

`tag` içindeyken aynı **branch**’deymiş gibi değişiklik yapıp `commit`
edebilirsiniz. İşiniz bitince `master` branch’e ya da başka bir branch’e
geçiş yaptığınızda karşınıza uyarı mesajı çıkar.

    Warning: you are leaving 1 commit behind, not connected to
    any of your branches:

      ff77580 file-v1.txt eklendi

    If you want to keep them by creating a new branch, this may be a good time
    to do so with:

     git branch new_branch_name ff77580d9aa76d24aefe0ec6fc887df4cfd23064

    Switched to branch 'master'

**1 commit** geride kaldın! `ff77580` numaralı revizyondaki değişiklikleri
almak istiyorsan o revizyondan bir branch üretmen gerek! Bunun için gerekli
komutu da bize sağlıyor `git`:

    git branch new_branch_name ff77580d9aa76d24aefe0ec6fc887df4cfd23064

`new_branch_name` kısmına oluşturacağınız yeni **branch**’in adını
yazıyorsunuz. `tag` içindeki değişikleri ancak bu tag’dan oluşturacağınız
farklı bir branch’le alabiliyorsunuz.

İsterseniz bu oluşan yeni branch’i ilgili diğer branch’lere `merge` 
edebilir, o değişiklikleri gerekiyorsa tüm branch’lerinize 
aktarabilirsiniz.
