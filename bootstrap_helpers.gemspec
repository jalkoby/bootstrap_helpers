# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap_helpers/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap_helpers"
  s.version     = BootstrapHelpers::VERSION
  s.authors     = ["Sergey Pchelincev"]
  s.email       = ["jalkoby91@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Add nifty helpers for bootstrap interface}
  s.description = %q{simple view helpers that generate part of bootstrap interface}

  s.rubyforge_project = "bootstrap_helpers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_runtime_dependency "rest-client"
end
