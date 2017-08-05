[![Build Status](https://travis-ci.org/tzmfreedom/http_action_mailer.svg?branch=master)](https://travis-ci.org/tzmfreedom/http_action_mailer)

# HttpActionMailer

AcitonMailer plugin to send HTTP request for debugging mail contents.

## Usage

```ruby
# config/environments/development.rb
config.action_mailer.delivery_method = :http
config.action_mailer.http_settings = {
  url: 'https://example.com',
  path: '/foo/bar',
  headers: {
    'X-HOGEHOGE-Header' => 'XXXX',
  },
}
```

Example for POST payload

```json
{
    "from": [
        "from@example.com"
    ],
    "to": [
        "to@example.org"
    ],
    "cc": null,
    "subject": "Hello",
    "text": "User#hello\n\nHi, find me in app/views/user_mailer/hello.text.erb\n\n",
    "html": "<!DOCTYPE html>\n<html>\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <style>\n      /* Email styles need to be inline */\n    </style>\n  </head>\n\n  <body>\n    <h1>User#hello</h1>\n\n<p>\n  Hi, find me in app/views/user_mailer/hello.html.erb\n</p>\n\n  </body>\n</html>\n"
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
