
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "acts_as_alertable/version"

Gem::Specification.new do |spec|
  spec.name          = "acts_as_alertable"
  spec.version       = ActsAsAlertable::VERSION
  spec.authors       = ["David Chmura"]
  spec.email         = ["dschmura@humbledaisy.com"]

  spec.summary       = %q{Makes records to have alerts.}
  spec.description   = %q{With ActsAsAlertable, you can easily add alerts to your models.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.7"
  s.add_development_dependency "factory_bot_rails", "~> 4.8"
end
