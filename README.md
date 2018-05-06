# Cpdundon::Cli::App::Take2

Hi - welcome to the CLI NOAA SOAP interface!  This app pulls tide and wind information from NOAA for NY Harbor.  Run ./bin/bin and watch the weather roll in/out.  The meat of the code for this app is located in ./lib/ .   I'd like to thank Josh Owens, Ann Heilmann Murphy, and Lorraine Fenenbock for helpful discussions on this project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cpdundon-cli-app-take2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cpdundon-cli-app-take2

## Usage

Please follow the prompts.  Enter 'y' to pull a data point.  Enter 'Exit' to leave the app.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cpdundon/cpdundon-cli-app-take2. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cpdundon::Cli::App::Take2 project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cpdundon-cli-app-take2/blob/master/CODE_OF_CONDUCT.md).
