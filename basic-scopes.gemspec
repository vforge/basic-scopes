$:.push File.expand_path("../lib", __FILE__)
require "basic-scopes/version"

Gem::Specification.new do |gem|
  gem.name = "basic-scopes"
  gem.version = BasicScopes::VERSION
  gem.summary = "ActiveRecord basic scopes."
  gem.description = "ActiveRecord basic scopes."
  gem.license = "MIT"

  gem.files = Dir["README.md", "MIT-LICENSE", "lib/**/*.rb"]

  gem.add_runtime_dependency 'activerecord', '>= 3.1'
  gem.add_runtime_dependency 'activesupport', '>= 3.1'

  gem.author = "Bartosz \"V.\" Bentkowski"
  gem.email  = "bartosz.bentkowski@gmail.com"
  gem.homepage = "https://github.com/vforge/basic-scopes"
end
