---
title: "`git-bundle` Repo’yu tek dosya haline getirmek"
date: 2013-01-06 23:34
tags: bundle,core
---
Repository'i tek dosya haline getirmek için;
READ_MORE

```bash
git bundle create /path/to/FILE.bundle BRANCH
```

Örneğin; `develop` adında bir **branch**’iniz var, bunu email ile 
arkadaşınıza yollamak istiyorsunuz:

`$HOME/Desktop` folder’ına bundle’ı oluşturalım:

```bash
git bundle create ~/Desktop/repo.bundle develop
git ls-remote ~/Desktop/repo.bundle
# SHA refs/heads/develop şeklinde görülür
```

Oluşan `repo.bundle` paketini repo **clone** edermiş gibi kullanmak:

```bash
git clone /path/to/FILE.bundle -b TARGET_BRANCH /path/to/repo

git clone ~/Desktop/repo.bundle -b develop /tmp/test-repo
# develop branch’ine clone ettim
```

Daha sonra bu repo üzerinde çalışmaya devam ettim ve **2 dosya** ekledim.
Yaptıklarımı (*sadece benim tarafımdan yapılanları*) görmek için:

```bash
git log --oneline develop ^origin/develop
```

Gelen bundle sadece `develop` branch’i olduğu için, bendeki ile 
`origin`‘dekini karşılaştırıyorum. Bundle’ı yollayan arkadaşıma 
**sadece benim tarafımdan** yapılanları tekrar paket yapıp yollamak 
istiyorum.

```bash
git bundle create ~/Desktop/commits.bundle develop ^origin/develop
```

Bundle’ın hatalı olup olmadığını `verify` ile anlıyoruz.

```bash
git bundle verify ~/Desktop/commits.bundle
```

Yaptığınız **commit**’leri bundle haline getirip karşı tarafa yolladınız.
Peki karşı tarafta bu birleştirme işi nasıl olacak?

```bash
git fetch ~/Desktop/commits.bundle develop:friends-develop
git log --oneline --decorate --graph --all
# dosyanın ~/Desktop'da olduğunu varsayıyorum
```