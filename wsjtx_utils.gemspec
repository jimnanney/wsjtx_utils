# frozen_string_literal: true

require_relative "lib/wsjtx_utils/version"

Gem::Specification.new do |spec|
  spec.name          = "wsjtx-utils"
  spec.version       = WsjtxUtils::VERSION
  spec.authors       = ["Jim Nanney"]
  spec.email         = ["jnanney@gmail.com"]

  spec.summary       = "Utilities to work alongside the WSJT-X ham radio communications tool"
  spec.description   = "Utilities to watch the log and highlight unworked stations, grid squares, " \
                       "and countries. Also includes a real-time publish to popular online log platforms " \
                       "for uploading log entries in real time."

  spec.homepage      = "https://github.com/wsjtx_utils"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wsjtx_utils"
  spec.metadata["changelog_uri"] = "https://github.com/jimnanney/wsjtx_utils/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_development_dependency "rubocop", "~> 1.19.0"
  spec.add_development_dependency "rubocop-rake", "~> 0.6.0"
  spec.add_development_dependency "rubocop-rspec", "~> 2.4.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
