# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jsPercolator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ad Taylor"]
  gem.email         = ["ad@adtaylor.co.uk"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jsPercolator"
  gem.require_paths = ["lib"]
  gem.version       = JsPercolator::VERSION
end
