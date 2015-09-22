---
title: "`git-rm` dosyayı versiyon kontrol altından çıkarmak"
date: 2013-01-22 17:30
tags: delete,ignore
---
Versiyon kontrol altındaki bir dosyayı daha sonradan `.gitignore` ’a eklediniz.
`.gitignore` ’un değiştiğini gördünüz ve `git add .gitignore` ile eklediniz.
READ_MORE

Daha sonra **ignore** ettiğiniz dosyada değişiklik yaptınız ve halen 
kontrol altında olduğunu gördünüz.

```bash
echo "file.txt" > .gitignore # file.txt’yi ignore ettiniz.
git status
```

    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   .gitignore
    nothing added to commit but untracked files present (use "git add" to track)

```bash
git add .gitignore
git commit -m "file.txt ignore'a alındı"
git status
```

    # On branch master
    nothing to commit, working directory clean
    
```bash
echo "file" >> file.txt
```

    # file.txt’ye yeni bir satır ekledik. ignore edildiğine göre bir sorun
    # olmamalı... kontrol edelim
    
```bash
git status
```
    
    # On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #   modified:   file.txt
    #
    no changes added to commit (use "git add" and/or "git commit -a")

`file.txt` **modified** görünüyor??? Halbuki biz bu dosyayı `.gitignore`’a
eklemiştik??? Bu durumu düzeltmek için;

```bash
git rm --cached file.txt
```

yapmamız gerekiyor. Kormayın dosya silinmedi (8

<div class="flash-video">
    <div><iframe src="http://www.screenr.com/embed/qMO7" width="100%" height="100%" frameborder="0"></iframe></div>
</div>
