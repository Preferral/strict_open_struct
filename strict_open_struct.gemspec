# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'strict_open_struct/version'

Gem::Specification.new do |spec|
  spec.name          = "strict_open_struct"
  spec.version       = StrictOpenStruct::VERSION
  spec.authors       = ["Nathan Wenneker"]
  spec.email         = ["nathan@preferral.com"]
  spec.summary       = %q{Thin layer on top of OpenStruct to raise exceptions for undefined keys.}
  spec.homepage      = "https://github.com/Preferral/strict_open_struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
