#!/usr/bin/env gem build

require_relative 'lib/sic_parvis_magna/version'

Gem::Specification.new 'sic_parvis_magna', SicParvisMagna::VERSION do |spec|
  spec.summary          = '“Greatness from small beginnings”'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/sic_parvis_magna/'
  spec.license          = 'MIT'
  spec.files            = Dir['{lib,spec}/**/*', 'CHANGELOG.md', 'CONTRIBUTING.md', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['CHANGELOG.md', 'CONTRIBUTING.md', 'LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.2'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_development_dependency 'rake',  '~> 10.5', '>= 10.5.0'
  spec.add_development_dependency 'rspec', '~> 3.4',  '>= 3.4.0'
end