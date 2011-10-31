$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'private_mail/version'

Gem::Specification.new do |s|
  s.name        = 'private_mail'
  s.version     = PrivateMail::VERSION
  s.date        = '2011-10-31'
  s.summary     = ""
  s.description = ""
  s.authors     = ["John McDowall"]
  s.email       = 'john@mcdowall.info'
  s.files       = ["lib/private_mail.rb"]
  s.homepage    = ''
  
  s.files = Dir.glob('lib/**/*.rb') 

  s.add_dependency('rails')
  
  s.add_development_dependency('rspec')
end
