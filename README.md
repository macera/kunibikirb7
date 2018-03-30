# MEMO

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
```