# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multitrap/version'

Gem::Specification.new do |spec|
  spec.name          = "multitrap"
  spec.version       = Multitrap::VERSION
  spec.authors       = ["Kyrylo Silin"]
  spec.email         = ["silin@kyrylo.org"]
  spec.summary       = %q{Allows Signal.trap to have multiple callbacks}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
