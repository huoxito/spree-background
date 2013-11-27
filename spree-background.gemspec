# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree/background/version'

Gem::Specification.new do |spec|
  spec.name          = "spree-background"
  spec.version       = Spree::Background::VERSION
  spec.authors       = ["Washington Luiz"]
  spec.email         = ["huoxito@gmail.com"]
  spec.description   = %q{Puts heavy tasks in background in a Spree store}
  spec.summary       = %q{Puts heavy tasks in background in a Spree store}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
