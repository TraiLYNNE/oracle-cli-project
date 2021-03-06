# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oracle/version'

Gem::Specification.new do |spec|
  spec.name          = "oracle"
  spec.version       = Oracle::VERSION
  spec.authors       = ["'Trai Compton'"]
  spec.email         = ["'tlcompton2546@outlook.com'"]

  spec.summary       = %q{An application based on BatGirl when she becomes Oracle}
  spec.description   = %q{The application will accept a password, list heroes in the database, and when a hero is chosen, their details will be displayed.}
  spec.homepage      = "https://www.github.com/TraiLYNNE/oracle-cli-project"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
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
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
