Gem::Specification.new do |s| 
  s.name         = "rth-studio"
  s.version      = "0.9"
  s.author       = "Raymond T. Hightower"
  s.email        = "rth@wisdomgroup.com"
  s.homepage     = "http://wisdomgroup.com"
  s.summary      = "Gem created during the PragProg online Ruby course"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README.md'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README.md)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'rth-studio' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
