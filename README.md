# Union Square Retail Guide

A CLI program that uses an the NYC Open Data API to help the user retrieve information about which retail stores that are in the Union Square area.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'choosing_shows'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install choosing_shows

## Usage
Select from a list of business types by number to retrieve the correlating retail stores in the Union Square area. You will then be able to choose a store by its number to find information on its address and phone number. After a stores info is displayed, you will be asked if you want to choose another store. If so, you will be brought back to choosing a business type. if not, the program will exit.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/choosing_shows. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/choosing_shows/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ChoosingShows project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/choosing_shows/blob/master/CODE_OF_CONDUCT.md).
