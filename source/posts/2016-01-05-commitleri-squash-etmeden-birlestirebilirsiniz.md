---
title: commit'leri squash etmeden birleştirebilirsiniz
date: Jan 05, 2016 22:21
tags: squash,reset
subtitle: git reset --soft
cover: "cover-2015-01-05.png"
---
Sık sık **commit** yapın. Hatta ilk etapta **commit mesajı**’nı da
pek fazla kafaya takmayın (???)
READ_MORE

Her **save** işleminden sonra **commit** yapabilir, `master` branch’e
göndermeden önce (*push*) de son olarak commit’leri düzenleyip,
`rebase` yapmaya gerek kalmadan birleştirebilirsiniz.

    $ git log --graph --decorate --oneline --all

    * 9187669 (HEAD -> master) 2 tane daha eklendi
    * e355298 2-3 eklendi
    * c8982b1 ilk dosya eklendi
    * f8f9369 [root] İlk commit

Bulunduğum proje dizini altında bulunan dosyalar:

    $ ls

    dosya1  dosya2  dosya3  dosya4  dosya5

**İlk commit**’ten sonra hızlı şekilde arka arkaya **3 commit** yaptık. 
İşimiz bitti, şimdi bu commit’leri **tek commit** haline getirip 
düzgün şekilde mesajını yazacağız. Yani birleştireceğimiz commit’ler:

    9187669 2 tane daha eklendi  # aslında; dosya4 ve dosya5 eklendi.
    e355298 2-3 eklendi          # aslında; dosya2 ve dosya3 eklendi.
    c8982b1 ilk dosya eklendi    # aslında; dosya1 eklendi.

## İşin sırrı: `HEAD~3`

    $ git reset --soft HEAD~3
    $ git st
    
    On branch master
    Changes to be committed:
      (use "git reset HEAD <file>..." to unstage)

    	new file:   dosya1
    	new file:   dosya2
    	new file:   dosya3
    	new file:   dosya4
    	new file:   dosya5

Şimdi sanki **son 3 commit olmamış gibi**, dosyalar **new file** durumda,
yaptığımız tüm değişiklikler korunmuş, commit’e hazır!

    $ git add dosya*
    $ git commit
    
    5 tane yeni dosya eklendi.

        * dosya adları; dosya1'den dosya5'e kadar.
        * dosya2'deki yazım hataları düzeltildi.
        * dosya4 yeniden düzenlendi.

        http://github.com/org/proje/ticke/666

    # Please enter the commit message for your changes. Lines starting
    # with '#' will be ignored, and an empty message aborts the commit.
    # On branch master
    # Changes to be committed:
    #	new file:   dosya1
    #	new file:   dosya2
    #	new file:   dosya3
    #	new file:   dosya4
    #	new file:   dosya5
    #

Şimdi bakalım;

    $ git log --graph --decorate --oneline --all
    
    * f697a91 (HEAD -> master) 5 tane yeni dosya eklendi.
    * f8f9369 [root] İlk commit
    
    $ git show
    
    commit f697a9158e627edc4a1f6390e8f31a708822b2c3
    Author: Uğur Özyılmazel <uxxx@gmail.com>
    Date:   Tue Jan 5 22:46:39 2016 +0200

        5 tane yeni dosya eklendi.

            * dosya adları; dosya1'den dosya5'e kadar.
            * dosya2'deki yazım hataları düzeltildi.
            * dosya4 yeniden düzenlendi.

            http://github.com/org/proje/ticket/666

    diff --git a/dosya1 b/dosya1
    new file mode 100644
    index 0000000..e69de29
    diff --git a/dosya2 b/dosya2
    new file mode 100644
    index 0000000..e69de29
    diff --git a/dosya3 b/dosya3