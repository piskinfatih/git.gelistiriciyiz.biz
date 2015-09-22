---
title: "Obje ile ilgili detaylı bilgi almak"
date: 2013-01-12 23:47
tags: internals
---
[Örneğin][01], `master` branch’in `HEAD` yani son haline
bakarsak `7475e83` ya da `7475e8305401b823b07778e04b51809a63604cda`
**SHA1** görürüz.
READ_MORE

Git; **Object**, **Hash** ve **Blob**’lardan oluşur. İlgili obje’nin
detaylarına bakmak için;

```bash
git cat-file -p 7475e83
```

dediğimizde;

    tree cf16bd5b95abbfb231f1abfa87a84354832c2498
    parent 2fe42f104aa791e5ecb063fb5759be58c24d833f
    author Uğur Özyılmazel <ugurozyilmazel@xxxx.com> 1440925561 +0300
    committer Uğur Özyılmazel <ugurozyilmazelxxxx.com> 1440925561 +0300

görürüz.

```bash
git cat-file -t 7475e83 # obje tipini verir, commit
git cat-file -s 7475e83 # obje büyüklüğünü verir (size), 276
```

[01]: https://github.com/vigo/dotfiles-universal