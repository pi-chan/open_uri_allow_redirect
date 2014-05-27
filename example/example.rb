require "rubygems"

$:.unshift File.expand_path("../lib", File.dirname(__FILE__))
require "open_uri_allow_redirect"

url = "http://github.com"

begin 
  OpenURI.allow_redirect do
    open(url) # redirected to https from http 
  end
rescue => e
  puts e # never be called
end

begin 
  open(url)
rescue => e
  puts e # => redirection forbidden: http://github.com -> https://github.com/
end

