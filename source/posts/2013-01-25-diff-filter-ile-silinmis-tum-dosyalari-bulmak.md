---
title: "`--diff-filter` ile silinmiş tüm dosyaları bulmak"
subtitle: "İlgili repositorydeki sildiğiniz tüm dosyaları listemek"
date: 2013-01-25 11:33
tags: log
---
Sildiğiniz tüm dosyaları listelemek ister misiniz?
READ_MORE

```bash
git log --diff-filter=D --summary
```

    commit 28b7e216114a6749917842bf832a629575ee5209
    Author: Uğur Özyılmazel <ugur@XXXXXXX.com>
    Date:   Fri Jan 25 11:42:10 2013 +0200

        deleted

     delete mode 100644 file1.txt
     delete mode 100644 file2.txt
     delete mode 100644 file3.txt

    commit 3dcd237bcfa862d6850ee095737f9316e74f9c18
    Author: Uğur Özyılmazel <ugur@XXXXXXX.com>
    Date:   Tue Jan 22 17:20:23 2013 +0200

        file ok

     delete mode 100644 file.txt


Karşınıza sildiğiniz dosyların listesi / path’i ve ilgili revizyon bilgisi
gelir.

```bash
git log --diff-filter=D --oneline
```

    28b7e21 deleted
    3dcd237 file ok

Sadece kısa **SHA** ve **commit** mesajını gösterir.

```bash
git log --diff-filter=D --oneline --summary
```

    28b7e21 deleted
     delete mode 100644 file1.txt
     delete mode 100644 file2.txt
     delete mode 100644 file3.txt
    3dcd237 file ok
     delete mode 100644 file.txt

Hem kısa **SHA** ile **commit** mesajını, hemde **silinen** dosyaları gösterir.
