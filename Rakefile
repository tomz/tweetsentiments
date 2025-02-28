require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require File.expand_path("../lib/tweetsentiments/version", __FILE__)
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.version = Tweetsentiments::VERSION
  gem.name = "tweetsentiments"
  gem.homepage = "https://github.com/tomz/tweetsentiments"
  gem.license = "MIT"
  gem.summary = %Q{A Ruby wrapper for the www.tweetsentiments.com REST APIS} 
  gem.description = %Q{A Ruby wrapper for the www.tweetsentiments.com REST APIs}
  gem.email = "tom@intridea.com, yonggu@intridea.com"
  gem.authors = ["Yong Gu","Tom Zeng"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  # gem.add_development_dependency 'rspec', '> 1.2.3'
  # gem.add_runtime_dependency 'farady', '>=0.5.3'
  # gem.add_runtime_dependency 'farady_middleware', '>=0.3.1'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = Tweetsentiments::VERSION
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tweetsentiments #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
