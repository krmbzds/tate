# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tate/version'

Gem::Specification.new do |spec|
  spec.name          = 'tate'
  spec.version       = Tate::VERSION
  spec.licenses      = 'MIT'
  spec.authors       = ['Kerem Bozdas']
  spec.email         = ['krmbzds.github@gmail.com']

  spec.summary       = 'Convert accented characters and transliterate non-latin alphabets to ASCII.'
  spec.description   = 'Convert accented characters and transliterate non-latin alphabets to ASCII.'
  spec.homepage      = 'https://github.com/krmbzds/tate'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         += Dir['lib/config/locales/*.yml']
  spec.bindir        = 'bin'
  spec.executables   = ['tate']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'i18n', '~> 1.6'
  spec.add_development_dependency 'bundler', '~> 2.0', '>= 2.0.2'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
end
