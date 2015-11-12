---
title: .mailmap ile commit istatistiği
date: Nov 12, 2015 15:53
tags: log
subtitle: "git shortlog -sn"
# published: false
# author:
#   name: 
#   email:
#   link:
#   bio:
---

Bazen commit eden kişilerin farklı ad ya da e-posta kullandıklarını görürsünüz.
READ_MORE

Örnek olarak [Python İstanbul][01]’un websitesini aldım:

```bash
git shortlog -sn
```

Çıktısı:

    54  Berker Peksag
    34  fatiherikli
    10  Cihan Okyay
    4  Fatih Erikli
    2  Bahattin Cinic
    2  Gokmen Gorgen
    1  Üstün Ergenoglu
    1  Murat Çorlu
    1  Oguz Kayral
    1  Uğur Özyılmazel


Dikkat ettiyseniz 2 tane **Fatih Erikli** mevcut.

    34  fatiherikli
    4  Fatih Erikli

Şimdi daha detaylı görelim, e-posta adresleriyle:

```bash
git shortlog -sne
```

Şimdi baktığımızda;

    34  fatiherikli <fatiherikli@xxx.com>
    4  Fatih Erikli <fatiherikli@xxx.com>

Her iki kullanıcının da aynı e-posta adresine sahip olduğunu gördük. Yapmamız
gereken proje’nin root folder’ına `.mailmap` adında bir dosya koymak ve
içeriğini de;

    fatiherikli <fatiherikli@xxx.com>
    Fatih Erikli <fatiherikli@xxx.com>

şeklinde düzenlemek... Şimdi baktığımıza;

```bash
git shortlog -sn
```

Doğru çıktıyı alırız:

    54  Berker Peksag
    38  Fatih Erikli        # 34 + 4 Toplam 38 commit!
    10  Cihan Okyay
    2  Bahattin Cinic
    2  Gokmen Gorgen
    1  Murat Çorlu
    1  Oguz Kayral
    1  Uğur Özyılmazel
    1  Üstün Ergenoglu


[01]: https://github.com/pyistanbul/website.git