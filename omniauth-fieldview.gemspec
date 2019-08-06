# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/fieldview/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-fieldview"
  spec.version       = Omniauth::Fieldview::VERSION
  spec.authors       = ["Felipe Mathies"]
  spec.email         = ["felipe.mathies@gmail.com"]

  spec.summary       = %q{Climate FieldView Omniatuh2}
  spec.description   = %q{Climate FieldView Omniatuh2}
  #spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '1.3.1'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
