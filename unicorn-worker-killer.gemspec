# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require File.expand_path('../lib/unicorn_worker_killer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "unicorn-worker-killer"
  gem.description = "Kill unicorn workers by memory and request counts"
  gem.homepage    = "https://github.com/kzk/unicorn-worker-killer"
  gem.summary     = gem.description
  gem.version     = Unicorn::WorkerKiller::VERSION
  gem.authors     = ["Kazuki Ohta", "Sadayuki Furuhashi", "Jonathan Clem"]
  gem.email       = ["kazuki.ohta@gmail.com", "frsyuki@gmail.com", "jonathan@jclem.net"]
  gem.has_rdoc    = false
  #gem.platform    = Gem::Platform::RUBY
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.licenses    = ["GPLv2+", "Ruby 1.8"]
  gem.require_paths = ['lib']

  gem.add_dependency "unicorn",         "~> 4"
  gem.add_dependency "get_process_mem", "~> 0.4.3.ey1"
  gem.add_development_dependency "rake", ">= 0.9.2"
end
