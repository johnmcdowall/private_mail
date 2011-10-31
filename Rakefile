require 'rubygems'
require 'bundler/setup'

require 'rake'
require 'rake/testtask'

$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'private_mail'

desc 'Default: run unit tests.'
task :default => [:test]

desc 'Test the private_mail gem.'
task :test do |t|
  exec('bundle exec rspec')
end

desc 'Start an IRB session with all necessary files required.'
task :shell do |t|
  chdir File.dirname(__FILE__)
  exec 'irb -I lib/ -I lib/private_mail -r rubygems -r active_record'
end

desc 'Build the gemspec.'
task :buildgem do |t|
  exec 'gem build private_mail.gemspec'
end