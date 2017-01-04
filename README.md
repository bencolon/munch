# Munch

Hunting ruby memory usage

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'munch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install munch

## Usage

```ruby
  Munch.get
  => Memory usage : 115 MB

  Munch.get("Oops")
  => Oops - Memory usage : 115 MB

  Munch.track do
    puts "Tracking..."
  end
  => Before eq1i53jg - Memory usage : 114 MB
  => Tracking...
  => After  eq1i53jg - Memory usage : 115 MB (+1 MB)

  Munch.track("mytag") do
    puts "Tracking..."
  end
  => [MYTAG] Before ku3l2l9d - Memory usage : 156 MB
  => Tracking...
  => [MYTAG] After  ku3l2l9d - Memory usage : 102 MB (-54 MB)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bencolon/munch.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
