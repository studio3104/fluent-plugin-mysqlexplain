# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-mysqlexplain"
  spec.version       = "0.0.1"
  spec.authors       = ["Satoshi SUZUKI"]
  spec.email         = ["studio3104.com@gmail.com"]
  spec.description   = %q{fluent-plugin to explain MySQL's SQL}
  spec.summary       = %q{fluent-plugin to explain MySQL's SQL}
  spec.homepage      = "https://github.com/studio3104/fluent-plugin-mysqlexplain"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "fluentd"
end
