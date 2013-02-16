ruby-template
=============

* rubyの簡単なスクリプトを作成する際のprojectテンプレート
* bundle install
* bundle exec rake migrate
* bundle exec rake migrate VERSION=2
* bundle exec guard start

```
%rake -T
rake migrate        # Migrate the database through scripts in db/migrate Target specific version with VERSION=x
rake migrate:reset  # Migrate the database through scripts in db/migrate drop and create
rake spec           # Run RSpec code examples
```
