# simple_allow

```
gem 'simple_allow'
```

```ruby
string = 'one'
symbol = :one

string.allow('one', 'two') #=> "one"
string.allow('two') #=> nil

symbol.allow(:one, :two) #=> :one
symbol.allow(:two) #=> nil
```
