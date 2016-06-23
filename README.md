# Blizzard

This is a gem to recursively freeze an object.

```ruby
ary = [ 1, "str", true, nil, { "key" => "value" } ]
ary.blizzard
ary[1].gsub!(/s/, "p") #=> can't modify frozen String
ary[4]["key2"] = "value2" #=> can't modify frozen Hash
ary[4]["key"].gsub!(/k/, "h") #=> can't modify frozen String
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blizzard'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blizzard

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/blizzard.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

