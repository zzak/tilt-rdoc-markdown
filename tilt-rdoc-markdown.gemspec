# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "tilt-rdoc-markdown"
  spec.version       = "0.1.0"
  spec.authors       = ["Zachary Scott"]
  spec.email         = ["zachary@zacharyscott.net"]
  spec.description   = %q{Tilt template to render Markdown using RDoc}
  spec.summary       = %q{Tilt extension to render Markdown using RDoc}
  spec.homepage      = "https://github.com/zzak/tilt-rdoc-markdown"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rdoc", "~> 4.0.0"
  spec.add_runtime_dependency "tilt"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "rake"
end
