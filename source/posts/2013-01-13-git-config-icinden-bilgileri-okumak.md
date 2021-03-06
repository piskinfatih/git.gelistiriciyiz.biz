---
title: "`git-config` içinden bilgileri okumak"
date: 2013-01-13 01:04
tags: config
---
Git konfigürasyon dosyasından bilgi okumak.
READ_MORE

```bash
git config --get user.email
```
`git`, kendi içinde [bash-completion][01] yani `[tab]` tuşuyla tamamlama
özelliğiyle birlikte gelir. Eğer sisteminizde Unix/Linux `bash-completion`
açıksa **[tab]** basarak git’e ait neredeyse herşeyi tamamlayabilirsiniz.

```bash
git config --get[tab]
```

Eğer herşey yolundaysa aşağıdaki gibi bir sahne görürsünüz:

    alias.br                            alias.vloga                         color.ui 
    alias.bra                           branch.master.merge                 core.bare 
    alias.brd                           branch.master.remote                core.excludesfile 
    alias.brr                           color.branch                        core.filemode 
    alias.ci                            color.branch.current                core.ignorecase 
    alias.co                            color.branch.local                  core.logallrefupdates 
    alias.deleted                       color.branch.remote                 core.repositoryformatversion 
    alias.df                            color.diff                          core.whitespace 
    alias.ign                           color.diff.frag                     github.token 
    alias.lg                            color.diff.meta                     github.user 
    alias.ls                            color.diff.new                      remote.origin.fetch 
    alias.st                            color.diff.old                      remote.origin.url 
    alias.sts                           color.status                        submodule.externals/scripts/z.url 
    alias.vlog                          color.status.added                  user.email 
    alias.vlog2a                        color.status.changed                user.name 
    alias.vlog2b                        color.status.untracked

[01]: http://bash-completion.alioth.debian.org/