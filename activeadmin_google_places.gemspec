require_relative 'lib/activeadmin/google_places/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin_google_places"
  spec.version       = ActiveAdmin::GooglePlaces::VERSION
  spec.authors       = ["Banura Randika"]
  spec.email         = ["randika.banura@gmail.com"]

  spec.summary       = "Google places search autocomplete to activeadmin"
  spec.description   = "Google places search autocomplete to activeadmin"
  spec.homepage      = "https://github.com/randikabanura/activeadmin_google_places"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activeadmin', '>= 1.0'
end
