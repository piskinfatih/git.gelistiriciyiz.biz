---
title: Commit mesajları için template kullanımı
date: Oct 04, 2015 11:26
tags: commit
---

Daha anlaşılır ve daha işe yarar commit mesajı yazmak ister misiniz?
READ_MORE

[Armağan Amcalar][0]’ın tweet’inde çok işe yarayacak bir [blog post][1] sonrası,
**commit template** nasıl yapılırı anlatmak istedim.

`git commit` dediğinizde karşınıza gelen mesaj yazma ekranında, `git`
tarafından hazır gelen mesaj şablonuna ek yapabiliriz.

```bash
git config --global commit.template ~/.git_commit_template
```

ile, bundan böyle yazacağımız mesajlar için önceden hazırlanmış bir şablon
kullanmasını söyleriz git’e. `~/.git_commit_template` dosyasına baktığımıza;

    # If applied, this commit will...

    # Why is this change being made?

    # Provide links to any relevant tickets, URLs or other resources
    
1. Bu commit’in ne yaptığını anlatır.
1. Neden bu değişikliğe ihtiyaç vardı?
1. Eğer ilgili bir ticket ya da link varsa yazılır.

İlgili [post][1]’daki örnek:

```bash
# If applied, this commit will...
Provide a Fabric task for installing Puppet modules

# Why is this change being made?
This change consolidates all project tasks in the fabfile.py and
means we can get rid of the make file

# Provide links to any relevant tickets, URLs or other resources
Fixes item:234
```

1. Puppet modülleri için Fabric taskları sağlıyor
2. Bu sayede artık make file kullanmaya gerek kalmıyor
3. 234 numaralı issue fixlendi

Bu mantık içinde, takımdaki arkadaşların rahat anlayacağı bir şablon
geliştirip, commit mesajlarını daha anlamlı hale getirebiliriz. Aynı
zamanda bu tarz hareketler bize de hatırlatma anlamında faydalı olur.

[0]: https://twitter.com/dashersw
[1]: http://codeinthehole.com/writing/a-useful-template-for-commit-messages/