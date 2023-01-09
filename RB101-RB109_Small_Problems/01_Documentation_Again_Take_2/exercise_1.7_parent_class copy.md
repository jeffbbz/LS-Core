
```ruby
s = 'abc'
puts s.public_methods.inspect
```

### [`Object#public_methods`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-public_methods)

#### Signature:
**`public_methods(all=true) → array`** 

`Object#public_methods` returns an array whose elements are a list of all public methods accessible to the calling object, including from inherited and parent classes. If argument is set to `false` then only the callers associated class methods will be returned.

The argument is optional, it will default to `true`.

#### **Code Explanation**

By changing the argument to `false` we return only the methods defined in the `String` class.