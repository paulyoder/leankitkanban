# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'leankitkanban/version'

Gem::Specification.new do |gem|
  gem.name          = "leankitkanban"
  gem.version       = LeanKitKanban::VERSION
  gem.authors       = ["Rhyd Lewis"]
  gem.email         = ["rhyd@blampt.com"]
  gem.description   = 'Some Description'
  gem.summary       = 'some Summary'
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
