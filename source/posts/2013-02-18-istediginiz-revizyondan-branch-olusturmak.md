---
title: "İstediğiniz revizyondan `branch` oluşturmak"
date: 2013-02-18 23:11
tags: branch
---
Herhangi bir revizyondan `branch` oluşturabilirsiniz.
READ_MORE

```bash
git branch BRANCH_ADI REVIZYON
git checkout -b BRANCH_ADI REVIZYON
```

İlk örnekte, açtığınız branch’e `git checkout BRANCH_ADI` ile geçiş
yapabilirsiniz. İkinci örnek; branch’i oluşturur ve hemen oluşan yeni
branch’e `checkout` yapar. İkinci örnekteki kullanım daha pratik
bir kullanım şeklidir.

Örneğin;

```bash
git checkout -b testing_branch 8bab7c4
```

gibi bir şekilde istediğiniz bir revizyondan branch oluşturabilirsiniz.
