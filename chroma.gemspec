# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chroma/version'

Gem::Specification.new do |spec|
  spec.name          = 'chroma'
  spec.version       = Chroma::VERSION
  spec.authors       = ['Jeremy Fairbank', 'Jade Ornelas']
  spec.email         = ['elpapapollo@gmail.com', 'jade@zoobean.com']
  spec.summary       = 'Color manipulation and palette generation.'
  spec.description   = 'Chroma is a color manipulation and palette generation gem.'
  spec.homepage      = 'https://github.com/zoobean/chroma'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.6'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'rubocop', '~> 1.74'
  spec.add_development_dependency 'rubocop-performance', '~> 1.24'
  spec.add_development_dependency 'rubocop-rake', '~> 0.7'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.5'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
