# git.gelistiriciyiz.biz

Lütfen `creds.rb` dosyasını oluşturun ve;

    DEPLOY_USER = "kullanıcı_adı"
    DEPLOY_HOST = "server"
    DEPLOY_PATH = "/path/to/site"

değişkenlerini tanımlayın.

## Kurulum

* Ruby 2.2.2

Repo’u clone ettikten sonra;

```bash
bundle install --path vendor/bundle
rake -T
rake # default => Ön izleme sunucusu
```

## Katkı Yapın

1. `fork` yapın ( [tıkla](https://github.com/gelistiriciyiz-biz/git.gelistiriciyiz.biz/fork) )
2. Kendi `branch`’inizi yapın (`git checkout -b benim-makalem`)
3. Yaptıklarınızı `commit` edin (`git commit -am 'Yeni makale'`)
4. `branch`’i `push` edin (`git push origin benim-makalem`)
5. Yeni bir **Pull Request** oluşturun!