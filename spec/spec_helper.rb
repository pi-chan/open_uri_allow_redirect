# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

require 'open_uri_allow_redirect'
require 'rspec'
require 'fakeweb'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  open(File.join(fixture_path, file)).read
end

FakeWeb.register_uri(:get, "http://redirect.com/" , response: fixture("http.response" ))
FakeWeb.register_uri(:get, "https://redirect.com/", response: fixture("https.response"))
