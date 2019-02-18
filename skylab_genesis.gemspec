lib = File.expand_path('lib', __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'skylab_genesis/version'

Gem::Specification.new do |gem|
  gem.name          = 'skylab_genesis'
  gem.version       = SkylabGenesis::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jordan Ell']
  gem.email         = ['info@skylabtech.ai']
  gem.description   = 'genesis.skylabtech.ai ruby client'
  gem.summary       = 'A HTTP client for accessing genesis.skylabtech.ai services.'
  gem.homepage      = 'https://github.com/skylab-tech/genesis_client_ruby'
  gem.license       = 'Apache-2.0'

  gem.files         = Dir['{lib}/**/*.rb', 'bin/*']
  gem.test_files    = Dir['{spec}/**/*.rb']
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec', '~> 3.8'
  gem.add_development_dependency 'shoulda-matchers', '3.1.2'
end
