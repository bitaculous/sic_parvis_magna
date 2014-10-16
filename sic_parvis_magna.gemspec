#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'sic_parvis_magna/version'

Gem::Specification.new do |spec|
  spec.name        = 'sic_parvis_magna'
  spec.summary     = '“Greatness from small beginnings”'
  spec.author      = 'Maik Kempe'
  spec.email       = 'mkempe@bitaculous.com'
  spec.homepage    = 'https://bitaculous.github.io/sic_parvis_magna/'
  spec.license     = 'MIT'
  spec.version     = SicParvisMagna::VERSION

  spec.files       = `git ls-files`.split($\)
  spec.executables = spec.files.grep(/^bin/).map { |file| File.basename file }
  spec.test_files  = spec.files.grep(/^(features|spec|test)/)

  spec.required_ruby_version = '~> 2.1'

  spec.required_rubygems_version = '~> 2.4'

  spec.add_development_dependency 'bundler', '~> 1.7'

  spec.add_development_dependency 'rake', '~> 10.3.2'

  spec.add_development_dependency 'rspec', '~> 3.1.0'
end