# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prawn_cocktail/version'

Gem::Specification.new do |gem|
  gem.name          = "prawn_cocktail"
  gem.version       = PrawnCocktail::VERSION
  gem.authors       = ["Henrik Nyh"]
  gem.email         = ["henrik@barsoom.se"]
  gem.summary       = "Simple documents, templates and helpers on top of Prawn."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "prawn"
  gem.add_dependency "activesupport"

  gem.add_development_dependency "rake"  # For Travis CI.
  gem.add_development_dependency "pdf-inspector"
end
