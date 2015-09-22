---
title: "`git-ls-remote` ile uzaktaki tag’leri listelemek"
date: 2013-02-28 00:25
tags: tag
---

Uzaktaki git reposunda bulunan tag’leri listeleyelim.
READ_MORE

```bash
git ls-remote --tags
git list-remote-tags
```

Örnek çıktı:

    From git@github.com:sinatra/sinatra.git
    72be291da2bf7a5e2dacf8b9119a258d8db53c43	refs/tags/0.0.1
    4d8f19741ab78dfe1cf62eb929137d9544ec8a4b	refs/tags/0.1.0
    2679e401ac408b5a1e90ea98a00a5b90bca0ae07	refs/tags/0.1.5
    c489d67d1a6540c2f80c2beee8d435b170e93a75	refs/tags/0.1.6
    64c77f55583db607cdb36c330bc445ffa7e05052	refs/tags/0.1.7
    ca9ac7b5aeb3d5adc1a4c7fb86e21b0dc688e55b	refs/tags/0.2.0
    886c5a413e01a9d412edb45ee26e63b7009e99f0	refs/tags/0.2.1
    d7032a0c91ca962aee6f25dbf5d5c3228658a9f1	refs/tags/0.2.2
    55221fc8c9737600320928387a995d65ada14710	refs/tags/0.3.0
    c09025efc5c5e5aca8b26eb22d76ab0b7943ac49	refs/tags/0.3.1
    cdf1abbadd80040d4a88041b50fa8c5cf891b871	refs/tags/0.3.2

şeklinde bir çıktı görüntülenir. Kolay kullanım için `alias` 
yapabilirsiniz:

```bash
git config --global alias.list-remote-tags "ls-remote --tags"
git list-remote-tags # şeklinde kullanım
```

