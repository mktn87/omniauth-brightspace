# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/brightspace/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-brighspace"
  spec.version       = OmniAuth::Brighspace::VERSION
  spec.authors       = ["Marcos Kintschner"]
  spec.email         = ["marcos.ktn@gmail.com"]
  spec.summary       = %q{OmniAuth strategy for Sign In with Brightspace}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/mktn87/omniauth-brightspace"
  spec.license       = "GPL-3.0"
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
    
  spec.add_dependency 'omniauth-oauth2', "~> 1.6.0"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 12.3.3"
end