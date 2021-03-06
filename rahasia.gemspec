# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rahasia/version'

Gem::Specification.new do |spec|
  spec.name          = 'rahasia'
  spec.version       = Rahasia::VERSION
  spec.authors       = ['burhanudin hakim']
  spec.email         = ['udnpico@gmail.com']

  spec.summary       = 'Wrapper encryption gem'
  spec.description   = 'Wrapper encryption gem'
  spec.homepage      = 'https://github.com/qontak-dev/rahasia.git'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3.8'
  # spec.add_dependency 'activesupport', '~> 4'
  spec.add_dependency 'lockbox', '~> 0.3.1'
  spec.add_dependency 'vault', '~> 0.13.0'

  # spec.add_development_dependency 'rails', '~> 4.2.10'
  # spec.add_development_dependency 'bundler', '< 2'
  # spec.add_development_dependency 'rake', '~> 10.0'
  # spec.add_development_dependency 'rspec', '~> 3.0'
  # # spec.add_development_dependency 'rubocop', '~> 0.79.0'
end
