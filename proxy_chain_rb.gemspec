
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "proxy_chain_rb/version"

Gem::Specification.new do |spec|
  spec.name          = "proxy_chain_rb"
  spec.version       = ProxyChainRb::VERSION
  spec.authors       = ["Sebastian Johnsson"]
  spec.email         = ["sebastian.johnsson@gmail.com"]

  spec.summary       = %q{Proxy connections in Ruby via the Node package proxy-chain}
  spec.description   = %q{Proxy connections in Ruby via the Node package proxy-chain}
  spec.homepage      = "https://github.com/SebastianJ/proxy-chain-rb"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.17.2"
  spec.add_development_dependency "rake",    ">= 12.3.2"
  spec.add_development_dependency "rspec",   ">= 3.0"
  
  spec.add_development_dependency "pry", "~> 0.12.2"
end
