$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'pingdom_cap/version'

Gem::Specification.new do |s|
  s.name          = 'pingdom-cap'
  s.version       = PingdomCap::VERSION
  s.date          = Time.now.utc.strftime('%Y-%m-%d')
  s.summary       = 'Pause/unpause a Pingdom service from Capistrano'
  s.description   = 'Pause/unpause a Pingdom service from Capistrano'
  s.authors       = ['Iora Health']
  s.email         = 'pingdom-cap@iorahealth.com'
  s.files         = `git ls-files`.split("\n")
  s.homepage      = 'https://github.com/IoraHealth/pingdom-cap'
  s.rdoc_options  = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.test_files    = `git ls-files spec`.split("\n")
  s.add_dependency 'awesome_print',      '~> 1.0.2'
  s.add_dependency 'capistrano',         '~> 2.9.0'
  s.add_dependency 'faraday',            '~> 0.7.6'
  s.add_dependency 'faraday_middleware', '~> 0.7'
  s.add_dependency 'hashie',             '~> 1.0.0'
  s.add_dependency 'multi_json',         '~> 1.0.4'
  s.executables << 'pingdom-cap'

  s.add_development_dependency 'rake', '0.9.2'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'xml-simple'
  s.add_development_dependency 'webmock'
end
