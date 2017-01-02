# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'klarna_gateway/version'

Gem::Specification.new do |spec|
  spec.name          = "klarna_gateway"
  spec.version       = KlarnaGateway::VERSION
  spec.authors       = ["Jose Antonio Pio Gil"]
  spec.email         = ["jose.pio@bitspire.de"]

  spec.summary       = %q{Implemantion of a ActiveMerchant Billing Gateway and Spree Gateway}
  spec.description   = %q{Implemantion of a ActiveMerchant Billing Gateway and Spree Gateway}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-rails", "~> 3.5.0"
  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "factory_girl", "~> 4"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "httplog"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "pg"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "solidus_core", ">= 1.3.0.a", "< 2.0"
  spec.add_dependency "solidus_frontend", ">= 1.3.0.a", "< 2.0"
  spec.add_dependency "solidus_backend", ">= 1.3.0.a", "< 2.0"
  spec.add_dependency "activemerchant"
end