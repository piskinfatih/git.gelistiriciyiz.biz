---
title: "`git-clone` kullanarak repo’nuzu yedekleyin"
date: 2013-02-20 21:59
tags: clone
---

Repository’inizi `git-clone` kullanarak yedekleyebilirsiniz.
READ_MORE

```bash
git clone /yedeklemek/istediğiniz/repo /yedekleyeceğiniz/dizin
```

`git clone` sadece uzaktaki repo’dan transfer için kullanılan bir komut değil.
Aynı zamanda yerel (*local*) işlemlerde de kullanılıyor. Örneğin uzaktaki
repo’dan yerele `clone` yaptınız:

```bash
cd $HOME
git clone git://github.com/vigo/git-tips.git test-repo
git clone $HOME/test-repo /tmp/yedek-test-repo
```

[Github][github]’dan repo’yu `clone` yaptık yerelimize. Sonra yerelimizdeki
repo dizininden başka bir yere kopya çıkarttık.

[github]: https://github.com/vigo/git-tips.git