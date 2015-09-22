---
title: "Track edilen branch"
date: 2014-11-16 12:55
tags: branch
---

İçinde bulunduğunuz `branch` acaba `remote`’da hangi branch’i takip
ediyor? Yani **track** dediyor?
READ_MORE

```bash
git branch -vv
```

`push` ettiğiniz yeri `--set-upstream-to=` ile takip edersiniz, ya da ilk
push’u yaparken `git push -u origin master` gibi `-u` kullanarak track edilecek
branch’i belirlersiniz.

```bash
git branch --set-upstream-to=<REMOTE>/<BRANCH> <LOCAL_BRANCH>
git branch --set-upstream-to=origin/master master
# local’deki master branch, remote’daki master’ı takip etsin
```

Takip ettiğiniz branch’i unuttuğunuzda yardıma `-vv` koşar :) `git branch -vv`
size nereyi takip ettiğiniz söyler!

```bash
* master b85437d [origin/master] README.md
```

