
```sh
$ git clone https://github.com/kwgch/ui_practice.git
$ bundle
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rails s
```

# 1. 連動コンボ
- ユーザー登録画面で県を選択すると、市区町村がコンボに表示される
- データは[郵便局のサイト](http://www.post.japanpost.jp/zipcode/dl/readme.html)からダウンロードしたもの（KEN_ALL.ZIP）
- seed.rbでバルクインサートしている
- TODO:csvからデータ構造、内容を変えていない。正規化、クレンジングが必要
