# -*- encoding: utf-8 -*-
require File.expand_path('../lib/better_open_struct/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ryan Closner"]
  gem.email         = ["ryan@ryanclosner.com"]
  gem.description   = %q{BetterOpenStruct is a subclass of OpenStruct that recursively wraps attribute hashes in an OpenStruct.}
  gem.summary       = %q{BetterOpenStruct is a subclass of OpenStruct that recursively wraps attribute hashes in an OpenStruct.}
  gem.homepage      = "http://github.com/rclosner/better_open_struct"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "better_open_struct"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1" 
end
