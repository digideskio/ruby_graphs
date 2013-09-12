lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'ruby_graphs'
  gem.version       = '0.0.1'
  gem.author        = 'Martin Madsen'
  gem.email         = 'martin2madsen@gmail.com'
  gem.description   = 'Create, display and run algorithms on mathematical graphs'
  gem.summary       = 'Uses graphviz to create graphs, but allows running algorithms such as BFS on the created graph'
  gem.homepage      = ''
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/Fapper/ruby_graphs'

  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.post_install_message = 'Thanks for using Ruby Graphs!'
end
