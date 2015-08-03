# DPN::Client


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dpn-client'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install dpn-client

## Usage

```
client = DPN::Client.new("https://some.node/api_root", my_auth_token)
client.get("/node") # It will automatically add this to the api root and api version.
client.get("https://google.com") # but if you supply a full url, it will do this instead.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec`
to run the tests. You can also run `bin/console` for an interactive prompt that will allow
you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new
version, update the version number in `version.rb`, and then run `bundle exec rake release`,
which will create a git tag for the version, push git commits and tags, and push the `.gem` file
to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dpn-client.
This project is intended to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

