# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_uri_allow_redirect/version'

Gem::Specification.new do |spec|
  spec.name          = "open_uri_allow_redirect"
  spec.version       = OpenUriAllowRedirect::VERSION
  spec.authors       = ["xoyip"]
  spec.email         = ["xoyip@piyox.info"]
  spec.summary       = %q{OpenURI patch to allow redirections between HTTP and HTTPs inside the block}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/xoyip/open-uri-allow-redirect"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
