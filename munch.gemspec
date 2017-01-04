# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'munch/version'

Gem::Specification.new do |spec|
  spec.name          = "munch"
  spec.version       = Munch::VERSION
  spec.authors       = ["Ben Colon"]
  spec.email         = ["ben@colon.com.fr"]

  spec.summary       = %q{Hunting ruby memory usage}
  spec.description   = %q{Hunting ruby memory usage}
  spec.homepage      = "http://colon.com.fr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "gatemedia_rubocop"

  spec.add_dependency "get_process_mem"
end
