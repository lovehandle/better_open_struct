# BetterOpenStruct

BetterOpenStruct is a subclass of OpenStruct that recursively wraps attribute hashes in an OpenStruct.

## Installation

Add this line to your application's Gemfile:

    gem 'better_open_struct'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install better_open_struct

## Usage

```ruby
  bos = BetterOpenStruct.new(:foo => { :bar => [ {:baz => 'some value'} ] })
```

can now be accessed in the following manner:

```ruby
  bos.foo.bar.first.baz # 'some value'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
