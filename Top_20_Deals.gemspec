# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Top_20_Deals/version'

Gem::Specification.new do |spec|
  spec.name          = "Top_20_Deals"
  spec.version       = Top20Deals::VERSION
  spec.authors       = ["Monika"]
  spec.email         = ["monika.m.williams@gmail.com"]

  spec.summary       = %q{"This Gem shows users the Top 20 Travel deals of the week curated by TravelZoo.com."}
  spec.homepage      = "https://github.com/CurlsandCode/Top20Deals-Cli-Gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_dependency "nokogiri"
end
