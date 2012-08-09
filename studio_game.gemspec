Gem::Specification.new do |s| 
  s.name         = "PragProg Studio Game"
  s.version      = "0.01"
  s.author       = "Raymond T. Hightower"
  s.email        = "rth@wisdomgroup.com"
  s.homepage     = "http://wisdomgroup.com"
  s.summary      = "Gem created during the PragProg online Ruby course"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
