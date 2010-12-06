# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tweetsentiments}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yong Gu"]
  s.date = %q{2010-12-06}
  s.description = %q{A Ruby wrapper for the www.tweetsentiments.com REST APIS}
  s.email = %q{yonggu@intridea.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "autotest/discover.rb",
    "lib/faraday/multipart.rb",
    "lib/faraday/raise_http_4xx.rb",
    "lib/faraday/raise_http_5xx.rb",
    "lib/tweetsentiments.rb",
    "lib/tweetsentiments/api.rb",
    "lib/tweetsentiments/client.rb",
    "lib/tweetsentiments/configuration.rb",
    "lib/tweetsentiments/connection.rb",
    "lib/tweetsentiments/request.rb",
    "lib/tweetsentiments/version.rb",
    "spec/fixtures/classify.json",
    "spec/fixtures/classify.xml",
    "spec/fixtures/classify_simple.json",
    "spec/fixtures/classify_simple.xml",
    "spec/spec_helper.rb",
    "spec/tweetsentiments/client_spec.rb",
    "spec/tweetsentiments_spec.rb",
    "tweetsentiments.gemspec"
  ]
  s.homepage = %q{http://github.com/yonggu@intridea.com/tweetsentiments}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Ruby wrapper for the www.tweetsentiments.com REST APIS}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/tweetsentiments/client_spec.rb",
    "spec/tweetsentiments_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_runtime_dependency(%q<multi_xml>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<ZenTest>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<faraday>, [">= 0"])
      s.add_development_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_runtime_dependency(%q<farady>, ["~> 0.5.3"])
      s.add_runtime_dependency(%q<farady_middleware>, ["~> 0.3.1"])
    else
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<multi_xml>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<ZenTest>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<farady>, ["~> 0.5.3"])
      s.add_dependency(%q<farady_middleware>, ["~> 0.3.1"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<multi_xml>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<ZenTest>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<farady>, ["~> 0.5.3"])
    s.add_dependency(%q<farady_middleware>, ["~> 0.3.1"])
  end
end

