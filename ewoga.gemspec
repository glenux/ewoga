# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ewoga/version'

Gem::Specification.new do |spec|
  spec.name          = "ewoga"
  spec.version       = Ewoga::VERSION
  spec.authors       = ["@@@No user configured@@@"]
  spec.email         = ["@@@No user configured@@@"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "LGPL-3"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "mail", "~> 2.6.3"
  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "mechanize"
  spec.add_runtime_dependency "colorize"
  spec.add_runtime_dependency "hash_validator"
  spec.add_runtime_dependency "pry"
  spec.add_runtime_dependency "pry-rescue"
end
