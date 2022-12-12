# frozen_string_literal: true

require_relative "lib/weston2022/version"

Gem::Specification.new do |spec|
  spec.name = "weston2022"
  spec.version = Weston2022::VERSION
  spec.authors = ["Weston Sandfort"]
  spec.email = ["sandfortw@gmail.com"]

  spec.summary = "Vote for me!"
  spec.description = "I'm running for prez!"
  spec.homepage = "https://github.com/sandfortw/gem_test"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sandfortw/gem_test"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
