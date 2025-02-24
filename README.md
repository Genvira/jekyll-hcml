# Jekyll-Hcml

Provides a Jekyll [converter](https://jekyllrb.com/docs/plugins/converters/) that converts HCML to HTML using the [HCML][Hcml] command

## Installation

Install [HCML][Hcml]

```sh
cargo binstall --git="https://github.com/abclop99/hcml" hcml@0.2
```

Install the gem by adding to the application's Gemfile

```ruby
group :jekyll_plugins do
  # (...)

  gem "jekyll-hcml",
    git: "https://github.com/Genvira/jekyll-hcml"
end
```

Install gems

```sh
bundle install
```

## Usage

Install the plugin, and it should convert `*.hcml` files to HTML.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jekyll-hcml. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/jekyll-hcml/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jekyll::Hcml project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/jekyll-hcml/blob/main/CODE_OF_CONDUCT.md).

[Hcml] https://github.com/abclop99/hcml
