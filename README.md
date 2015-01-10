
# 1. 連動コンボ
- ユーザー登録画面で県を選択すると、市区町村がコンボに表示される
- データは[郵便局のサイト](http://www.post.japanpost.jp/zipcode/dl/readme.html)からKEN_ALL.ZIPをダウンロードして、seed.rbでバルクインサートしている
- csvからデータ構造、内容を変えていない。正規化、クレンジングが必要
