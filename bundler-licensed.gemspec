# frozen_string_literal: true

# rubocop:disable Layout/ExtraSpacing, Layout/SpaceAroundOperators
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler/licensed/version'

Gem::Specification.new do |spec|
  spec.name          = 'bundler-licensed'
  spec.version       = Bundler::Licensed::VERSION
  spec.authors       = ['Sergey Alekseev']
  spec.email         = ['code+bundlerlicensed@sergeyalekseev.com']

  spec.summary       = 'A bundler hook for https://github.com/github/licensed'
  spec.description   = <<~HEREDOC
    Use a Bundler hook to automatically run `licensed cache -s bundler`
    after running `bundle install` or `bundle update` commands.
  HEREDOC
  spec.homepage      = 'https://github.com/sergey-alekseev/bundler-licensed'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
    spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'licensed', '~> 2.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.0'

  spec.required_ruby_version = '>= 2.5'
end
# rubocop:enable Layout/ExtraSpacing, Layout/SpaceAroundOperators
