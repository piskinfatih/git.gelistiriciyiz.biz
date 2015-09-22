---
title: "`push.default` ve ayarı"
date: 2013-02-03 17:30
tags: config
---
Git versiyon 1.8.0’la hayatımıza giren ve ilk anda kafamızı karıştıran
`git push` özelliği aslında çok basit ve kullanışlı.
READ_MORE

Önceki versiyonlarda, bulunduğunuz **branch** neresi ise uzak repo’daki aynı
yere **push** yapılırdı. Yani siz o an için `test` branch’deyseniz ve `test`i
uzaktaki repo’ya göndermek (*push*) için;

```bash
git push origin master # ya da
git push
```

demeniz yeterli oluyordu. Yeni versiyonla birlikte aynı şekilde `git push`
dediğiniz anda, karşımıza uyarı mesajı gelir. Bizden `push.default`
ayarımızı yapmanızı ister.

İster proje bazlı ister genel olarak bu ayarı yapabiliriz. (*--global*)

## current

```bash
git config --global push.default current
```

Aynı eski sistem gibi çalışır. Bulunduğunuz branch adı neyse uzağa aynı
adla push eder.

## matching

```bash
git config --global push.default matching
```

Tüm local branch’lerinizi aynen uzağa push eder. Bu biraz **tehlikeli** bir
kullanım şeklidir. İstemeden diğer branch’leri de push etmiş olursunuz.

## upstream (tracking)

```bash
git config --global push.default upstream
```

Eski adı **tracking** yeni adı **upstream**. Local branch’i uzaktaki
bağlı olduğu tracking branch’e push etmemizi sağlar. Projeyi `clone` ettiniz
ve `git branch -a` dediğinizde pek çok **branch adı** gördünüz.

O branch’lerden birine `checkout` ettiğiniz anda local ile uzak arasında
**Tracking** bağı kuruluyor. `upstream` bu şekilde track ettiğiniz branch’e
push etmenizi sağlar.

Keza, ilk kez push ederken `git push -u origin master` dediğinizde de
adı **origin** olak remote’daki `master` branch’ine `upstream` eklemiş
olursunuz.

## simple

```bash
git config --global push.default simple
```

Aynı `upstream` gibidir. Tek farkı eğer uzaktaki ile local'deki branch
adlarında farklılık olursa **push etmeye izin vermez**. Git [dökümantasyonunda][2]
bu özellik için: **Yeni git kullananlar için en güvenli yöntemdir.** diyor :)


Git versiyon 2.0’da default olarak bu **simple** gelecekmiş.

## nothing

```bash
git config --global push.default nothing
```

Hiçbir şey olmaz!

Önerim `git config --global push.default upstream` kullanmanızdır. Zaten
uzaktaki branch’leri mutlaka track ediyor olmanız gerektiğini düşünüyorum.

Bu sayede; örneğin `develop` branch’indeyken `git push origin develop` yerine
`git push` yazmanız yeterli olacaktır.

## Linkler

* [Release Not’ları][1]

[1]: https://github.com/git/git/blob/master/Documentation/RelNotes/1.8.0.txt
[2]: http://git-scm.com/docs/git-config