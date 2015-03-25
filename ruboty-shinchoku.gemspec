# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/shinchoku/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-shinchoku"
  spec.version       = Ruboty::Shinchoku::VERSION
  spec.authors       = ["mzp"]
  spec.email         = ["mzpppp@gmail.com"]

  spec.summary       = %q{A Ruboty plugin to show 進捗どうですか? image.}
  spec.description   = %q{A Ruboty plugin to show 進捗どうですか? image.}
  spec.homepage      = "https://github.com/mzp/ruboty-shinchoku"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
