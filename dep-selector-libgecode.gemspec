# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dep-selector-libgecode/version'

Gem::Specification.new do |spec|
  spec.name          = "dep-selector-libgecode"
  spec.version       = DepSelectorLibgecode::VERSION
  spec.authors       = ["danielsdeleo"]
  spec.email         = ["dan@getchef.com"]
  spec.summary       = %q{Installs a vendored copy of Gecode suitable for use with dep-selector}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.licenses       = ["MIT", "Apache 2.0"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.extensions = Dir["ext/**/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "github_changelog_generator", "!= 1.10.2", "!= 1.10.3", "!= 1.10.4", "!= 1.10.5", "!= 1.11.0"
end
