---
title: "Daha detaylı `git-branch`"
date: 2013-01-06 22:03
tags: branch
---
Local’deki ve Remote’daki yani varolan tüm **branch**'leri göstermek 
için;
READ_MORE

```bash
git branch -a
```

kullanıyoruz. Fakat daha detaylı bilgi almak için;

```bash
git branch -av
```

yapabiliriz. Bu sayede hem **revizyon** (*SHA*) hem de **commit** mesajını
görebiliriz.

`alias` olarak eklemek için;

```bash
git config --global alias.br "branch -v"
git config --global alias.bra "branch -av"
```

`git br` ve `git bra` şeklinde kullanabilirsiniz.

<div class="full zoomable"><img src="http://36.media.tumblr.com/bf24ca515dab2412665d1643a9b7fdb6/tumblr_mgl8mbqiR01s3r5wmo1_1280.png"></div>
