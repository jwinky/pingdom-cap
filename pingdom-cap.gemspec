# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'pingdom_cap/version'

Gem::Specification.new do |s|
  s.name          = 'pingdom-cap'
  s.version       = PingdomCap::VERSION
  s.date          = Time.now.utc.strftime('%Y-%m-%d')
  s.summary       = 'Pause/unpause a Pingdom service from Capistrano'
  s.description   = 'Pause/unpause a Pingdom service from Capistrano'
  s.authors       = ['Iora Health']
  s.email         = 'rubygems@iorahealth.com'
  s.files         = `git ls-files`.split("\n")
  s.homepage      = 'https://github.com/IoraHealth/pingdom-cap'
  s.rdoc_options  = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  
  s.add_dependency 'awesome_print',        '~> 1.0.2'
  s.add_dependency 'capistrano',           '>= 2.9.0'
  s.add_dependency 'faraday',              '>= 0.8.1'
  s.add_dependency 'faraday_middleware',   '>= 0.8.7'
  s.add_dependency 'hashie',               '~> 1.2.0'

  s.add_development_dependency 'rake',     '~> 0.9.2'
  s.add_development_dependency 'rspec',    '~> 2.8.0'
  s.add_development_dependency 'mocha',    '~> 0.10.0'
  s.add_development_dependency 'webmock',  '~> 1.7.10'
  s.add_development_dependency 'cucumber', '~> 1.1.4'
  s.add_development_dependency 'aruba',    '~> 0.4.11'
  s.add_development_dependency 'vcr',      '2.0.0.rc1'
end
