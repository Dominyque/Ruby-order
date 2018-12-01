
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "order/version"

Gem::Specification.new do |spec|
  spec.name          = "order"
  spec.version       = Order::VERSION
  spec.authors       = ["Dominyque"]
  spec.email         = ["antihumanistas@gmail.com"]

  spec.summary       = %q{more universal way to sort an array.}
  spec.description   = %q{Arrays are sorted by the numeric value, nonumeric members stay in their position after the sort.}
  spec.homepage      = "https://github.com/Dominyque/Ruby-order.git"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
