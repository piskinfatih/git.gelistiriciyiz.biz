---
title: "`rm` ile silinen dosyaların tümünü `git`’e eklemek"
date: 2013-01-09 01:57
tags: core
---
`rm` ile silinen dosyaların tümünü git’e eklemek için;
READ_MORE

```bash
git add -u
```
Dosya silerken bazen `git rm` yapmadan `rm` yaptığınız oluyordur. Eğer
sildiğiniz dosya sayısı çoksa; örneğin `pictures/` altındaki tüm 
`*.jpg`‘leri sildiniz, bunları tek tek `git rm` yapmak çok sıkıcı 
ve zaman alıcıdır.
