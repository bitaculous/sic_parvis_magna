#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'sic_parvis_magna/version'

Gem::Specification.new do |spec|
  spec.name          = 'sic_parvis_magna'
  spec.summary       = 'Greatness from small beginnings.'
  spec.authors       = 'Maik Kempe'
  spec.email         = 'dev@nrolla.com'
  spec.homepage      = 'https://github.com/mkempe/sic_parvis_magna'
  spec.version       = SicParvisMagna::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.date          = '2013-09-09'
  spec.licenses      = 'MIT'

  spec.require_paths = ['lib']

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map { |file| File.basename file }
  spec.test_files    = spec.files.grep(%r{^(features|spec|test)/})

  spec.add_development_dependency 'bundler', '~> 1.3.5'

  spec.add_development_dependency 'rake',    '~> 10.1.0'

  spec.add_development_dependency 'rspec',   '~> 2.14.1'

  spec.required_rubygems_version = Gem::Requirement.new '>= 2.0.0'
end