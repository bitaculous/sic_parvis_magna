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
  spec.licenses      = 'MIT'

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(/^bin/).map { |file| File.basename file }
  spec.test_files    = spec.files.grep(/^(features|spec|test)/)

  spec.required_ruby_version = '>= 2.0.0'

  spec.required_rubygems_version = Gem::Requirement.new '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.5.3'

  spec.add_development_dependency 'rake', '~> 10.1.1'

  spec.add_development_dependency 'rspec', '~> 2.14.1'
end