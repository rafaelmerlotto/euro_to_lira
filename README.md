# EuroToLira

A simple Ruby gem for converting between Euros (EUR) and Italian Lire (ITL) using the fixed historical conversion rate (1 EUR = 1936.27 ITL).

## Installation

You can install the gem via RubyGems once it is released:

```bash
$ gem install euro_to_lira
```

Or, Add it to your Gemfile:

```bash
gem euro_to_lira
```

Then run: 

```bash
$ bundle install
```

If you want to use it directly from GitHub:

```bash
gem 'euro_to_lira', git: 'https://github.com/rafaelmerlotto/euro_to_lira.git'
```

## Usage

```ruby
require 'euro_to_lira'

EuroToLira.to_lira(10)    # => 19362.7
EuroToLira.to_euro(1936)  # => 1.0

# Raises an error for invalid input
EuroToLira.to_lira("10")  # => ArgumentError

```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rafaelmerlotto/euro_to_lira. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/rafaelmerlotto/euro_to_lira/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EuroToLira project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rafaelmerlotto/euro_to_lira/blob/main/CODE_OF_CONDUCT.md).
