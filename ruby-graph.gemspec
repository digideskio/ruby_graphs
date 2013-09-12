# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby-graph/version'

Gem::Specification.new do |gem|
  gem.name          = "ruby-graph"
  gem.version       = Ruby::Graph::VERSION
  gem.authors       = ["Martin Madsen"]
  gem.email         = ["martin2madsen@gmail.com"]
  gem.description   = %q{Create, display and run algorithms on mathematical graphs}
  gem.summary       = %q{Uses graphviz to create graphs, but allows running algorithms such as BFS on the created graph}
  gem.homepage      = ""
  
  gem.add_development_dependency "rspec"  

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
