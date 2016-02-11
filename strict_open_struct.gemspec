# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "strict_open_struct"
  spec.version       = "0.0.1.1"
  spec.authors       = ["Nathan Wenneker"]
  spec.email         = ["nathan@preferral.com"]
  spec.summary       = %q{Thin layer on top of OpenStruct to raise exceptions for undefined keys.}
  spec.homepage      = "https://github.com/Preferral/strict_open_struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0' # Might work a little farther back, but doesn't support earliest implementations of OpenStruct

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
