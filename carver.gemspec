# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carver/version'

Gem::Specification.new do |spec|
  spec.name          = "carver"
  spec.version       = Carver::VERSION
  spec.authors       = ["Jonathan Barrett"]
  spec.email         = ["jonathan@freeagentcentral.com"]

  spec.summary       = %q{Simple cohort assignment and percolation system for A/B testing}
  spec.homepage      = "https://github.com/fac/carver"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "guard-rspec", "~> 4.5"
end
