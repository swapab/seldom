# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "seldom/version"

Gem::Specification.new do |s|
  s.name        = %q{seldom}
  s.version     = Seldom::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Swapnil Abnave"]
  s.email       = ["swapnilabnave42@gmail.com"]
  c.hompage     = 'https://github.com/swapnilabnave/seldom'
  s.date        = %q{2013-12-07}
	s.summary     = %q{seldom is seldom}

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'faker', '~> 1.2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
