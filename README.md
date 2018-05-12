# 概要

下記機能をActiveModelとRubyの特異クラスを使って実装したプロトタイプ

## 動的な入力フォームを実装

1. 管理者が画面上で入力フォームを作る
  (テキストボックス、ラジオボタン等、検証機能の有無を選択できる)
  (ただし、現時点で選択できるのはテキストフィールドテキストエリアのみ)
2. 訪問者が画面上でその入力フォームに必須事項を入力する
3. 管理者は訪問者が入力した情報を画面上で確認出来る

# COMMAND MEMO

```
$ mkdir kunibiki7
$ cd kunibiki7
$ bundle init
fix Gemfile
$ bundle install --path vendor/bundle
$ bundle exec rails new . -T
$ rails g model form title:string
$ rails g model form_item name:string field:string required:boolean maxlength:integer minlength:integer form:references
$ rails g model item_option name:string value:string form_item:references
$ rails g model answer name form:references
$ rails g model answer_content value:string answer:references form_item:references item_option:references
$ rails db:migrate
$ rails g controller admins index new edit
$ rails g controller answers index new show
fix routes.rb
...
```
