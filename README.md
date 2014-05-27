# OpenUriAllowRedirect

This gem adds new `allow_redirect` method to OpenURI.

In the code block passed to this method, redirections from HTTP to HTTPS are allowed.

This gem is inspired by [this gem](https://github.com/jaimeiniesta/open_uri_redirections).

## Installation

Add this line to your application's Gemfile:

    gem 'open_uri_allow_redirect'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install open_uri_allow_redirect

## Usage

```ruby
require "open_uri_allow_redirect"

open("http://github.com") # => raises RuntimeError, redirected to https://github.com

OpenURI.allow_redirect do
  open("http://github.com") # => no error
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/open_uri_allow_redirect/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
