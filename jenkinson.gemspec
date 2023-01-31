# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jenkinson/version'

Gem::Specification.new do |spec|
  spec.name          = "jenkinson"
  spec.version       = Jenkinson::VERSION
  spec.authors       = ["torkale"]
  spec.email         = ["torkale@gmail.com"]
  spec.summary       = %q{Jenkinson is a simple tool to sync jenkins server}
  spec.description   = %q{Jenkinson helps in installation of jenkins plugins}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "jenkins_api_client"
  spec.add_dependency "thor"
  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake"
end
