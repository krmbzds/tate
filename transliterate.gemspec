# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transliterate/version'

Gem::Specification.new do |spec|
  spec.name          = "transliterate"
  spec.version       = Transliterate::VERSION
  spec.authors       = ["Kerem Bozdas"]
  spec.email         = ["krmbzds.github@gmail.com"]

  spec.summary       = "Replace accented characters with ASCII"
  spec.description   = "Replace accented characters with ASCII"
  spec.homepage      = "https://github.com/krmbzds/transliterate"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activerecord', '~> 4.2', '>= 4.2.5.1'
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
