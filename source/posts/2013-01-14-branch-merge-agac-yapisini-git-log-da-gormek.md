---
title: "Branch / merge ağaç yapısını `git-log`’da görmek"
date: 2013-01-14 01:17
tags: log,branch
---
Git’de branch-merge ağaç yapısını görmek için yapmanız gereken sadece 
komut içinde `--graph` kelimesi kullanmak.
READ_MORE

Son **10 commit**’i belirlediğim formatta `--graph` ile göster
(*önceki örneklerden*):

```bash
git log -10 --pretty=format:'%Cblue%h%Creset %Cgreen%an%Creset %s (%Cred%ar%Creset)' --graph
```

    *   c1ed18e Zachary Scott Merge pull request #1011 from sinatra/bump-rack (3 months ago)
    |\  
    | * 099de71 Zachary Scott Don't test Rack 1.4, since we won't use it. (3 months ago)
    | * 83b06c0 Zachary Scott Bump Rack to 1.5.x, but not 1.6 since it doesn't work on 1.8.7: https://travis-ci.org/sinatra/sinatra/jobs/67398284#L155 (3 months ago)
    * |   56dfd23 Zachary Scott Merge pull request #1012 from sinatra/add-ashley (3 months ago)
    |\ \  
    | * | 41cc794 Zachary Scott Add @ag_dubs to sinatra-core :clap: :tada: :confetti_ball: :tada: (3 months ago)
    | |/  
    * | 3cade28 Zachary Scott Don't test Rack 1.4, since we won't use it. (3 months ago)
    |/  
    * 18353f8 Zachary Scott Move rack master to allowed failures since 2.0.0 development begins (4 months ago)
    *   8056ae7 Zachary Scott Merge pull request #997 from sinatra/fr-multi-threaded (4 months ago)
    |\  
    | * 95d6c14 Katrina Owen Add documentation in French about multi-threading. (6 months ago)
    * |   1830563 Zachary Scott Merge pull request #994 from nico-hn/refactoring_of_compile (4 months ago)
    |\ \  


<div class="full zoomable"><img src="http://41.media.tumblr.com/2d220499f7a1bef11a84b461c4bb610e/tumblr_mgl7ukFYIJ1s3r5wmo1_1280.png"></div>