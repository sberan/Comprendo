# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "comprendo/version"

Gem::Specification.new do |s|
  s.name        = "comprendo"
  s.version     = Comprendo::VERSION
  s.authors     = ["Sam Beran"]
  s.email       = ["sberan@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Python style list comprehensions for ruby}
  s.description = %q{Python style list comprehensions for ruby}

  s.rubyforge_project = "comprendo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "treetop"
  s.add_development_dependency "rake"
end
