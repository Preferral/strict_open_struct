# StrictOpenStruct

A thin layer on top of OpenStruct that raises an exception when you access undefined keys rather than returning nil.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'strict_open_struct'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install strict_open_struct

## Usage

Use it just like you would use OpenStruct, but if you try to access a key that has not been defined, an exception will be raised.

```ruby
data = StrictOpenStruct.new(first_name: 'Adam', last_name: 'Adamson')
data.firs_name # Typo --- raises exception instead of returning nil
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/strict_open_struct/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
