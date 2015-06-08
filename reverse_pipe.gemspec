# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reverse_pipe/version'

Gem::Specification.new do |spec|
  spec.name          = "reverse_pipe"
  spec.version       = ReversePipe::VERSION
  spec.authors       = ["Masafumi Yokoyama"]
  spec.email         = ["myokoym@gmail.com"]
  spec.description   = %q{A command to reverse pipeline text.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/myokoym/reverse_pipe"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency("test-unit")
  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
end
