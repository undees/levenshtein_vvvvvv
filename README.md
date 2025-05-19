# levenshtein_vvvvvv

Leveinshtein string distance algorithm written in safe V and machine-translated to C.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'levenshtein_vvvvvv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install levenshtein_vvvvvv

## Usage

```ruby
LevenshteinVvvvvv.distance("la", "là") # => 1
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To edit the V source code and re-translate it to C, install [V](https://vlang.io) and run:

```
bundle exec rake preprocess_v
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/undees/levenshtein_vvvvvv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LevenshteinVvvvvv project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/undees/levenshtein_vvvvvv/blob/master/CODE_OF_CONDUCT.md).
