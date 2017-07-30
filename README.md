# HttpMailer
Short description and motivation.

## Usage
How to use my plugin.

```ruby
# config/environments/development.rb
config.action_mailer.http_settings = {
  url: 'https://example.com',
  path: '/foo/bar',
  headers: {
    'Content-Type' => 'application/json',
    'X-HOGEHOGE-HEader' => 'XXXX',
  },
}
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'http_action_mailer'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install http_action_mailer
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
