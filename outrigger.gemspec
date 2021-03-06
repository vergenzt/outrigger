# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'outrigger/version'

Gem::Specification.new do |spec|
  spec.name          = "outrigger"
  spec.version       = Outrigger::VERSION
  spec.authors       = ["Drew Bowman"]
  spec.homepage      = "https://github.com/instructure/outrigger"
  spec.summary       = "Tag migrations and run them separately"
  spec.license       = "MIT"
  spec.description   = "Migrations"

  spec.files         = Dir.glob("{lib,spec}/**/*") + %w[Rakefile]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 4.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.2"
  spec.add_development_dependency "rspec", "2.14.1"
end
