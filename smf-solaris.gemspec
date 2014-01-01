# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smf/solaris/version'

Gem::Specification.new do |spec|
  spec.name          = 'smf-solaris'
  spec.version       = SMF::Solaris::VERSION
  spec.authors       = ['Eric Saxby']
  spec.email         = ['sax@livinginthepast.org']
  spec.summary       = %q{A Ruby interface to the Service Management Facility (SMF) in Solaris and Illumos}
  spec.description   = %q{A Ruby interface to the Service Management Facility (SMF) in Solaris and Illumos}
  spec.homepage      = 'https://github.com/livinginthepast/smf-solaris'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
