---
title: İlk commit boş olsun
date: Dec 10, 2015 08:43
tags: commit
subtitle: git commit --allow-empty
---
Başlangıç noktamızı işaretlemek herzaman işimize yarayacaktır.
READ_MORE

Yeni bir repository açtığımızda, hemen bir `README.md` ekleyip,
ilk commit’i yaparız. Aslında hiçbir dosya eklemeden de başlangıç
noktamızı ayarlayabiliriz.

```bash
mkdir test_projesi
cd test_projesi/
git init
git commit --allow-empty -m "[empty] Initial commit" # ya da
git commit --allow-empty -m "[boş] İlk commit"
```

Hatta, bu **0 noktasını** ek olarak `tag` lemek de iyidir:

```bash
git tag initial -m "Initial tag"
```