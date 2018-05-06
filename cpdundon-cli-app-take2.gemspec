# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cpdundon/cli/app/take2/version"

Gem::Specification.new do |spec|
  spec.name          = "cpdundon-cli-app-take2"
  spec.version       = Cpdundon::Cli::App::Take2::VERSION
  spec.authors       = ["Chris Dundon"]
  spec.email         = ["chris.dundon@gmail.com"]

  spec.summary       = %q{Scrape wind velocity and water level data from NOAA CO-OPS SOAP web services.}
  spec.homepage      = "https://github.com/cpdundon/cpdundon-cli-app-take2"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir['lib/   *.rb'] + Dir['bin/*'] + Dir['[A-Z]*'] + Dir['lib/cli/app/   *.rb'] + Dir['lib/cli/app/take2/   *.rb']
#  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
#    f.match(%r{^(test|spec|features)/})
#  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/cpdundon/cli/app", "lib/cpdundon/cli/app/take2"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "savon", "~>2.0"
end
