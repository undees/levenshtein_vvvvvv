
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "levenshtein_vvvvvv/version"

Gem::Specification.new do |spec|
  spec.name          = "levenshtein_vvvvvv"
  spec.version       = LevenshteinVvvvvv::VERSION
  spec.authors       = ["Erin Paget"]
  spec.email         = ["erin.paget@clio.com"]

  spec.summary       = %q{Levenshtein string distance written in V}
  spec.homepage      = "https://github.com/undees/levenshtein_vvvvvv"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/levenshtein_vvvvvv/extconf.rb"]

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec", "~> 3.0"
end
