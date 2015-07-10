# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'littlstar/version'

Gem::Specification.new do |spec|
  spec.name    = 'littlstar'
  spec.version = Littlstar::VERSION
  spec.authors = ['Dominic Giglio']
  spec.email   = ['support@littlstar.com']

  gem.summary     = %q{Access Littlstar API}
  gem.description = %q{This gem defines methods for controlling your content through the Littlstar API.}
  spec.homepage   = 'https://github.com/littlstar/ruby-sdk'
  spec.license    = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://github.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
end
