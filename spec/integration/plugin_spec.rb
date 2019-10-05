# frozen_string_literal: true

RSpec.describe 'A bundler hook' do
  before(:all) do
    system 'bundle plugin install bundler-licensed ' \
           "--git #{File.expand_path('../../', __dir__)}"
  end

  %w[install update].each do |command|
    it "caches dependencies on bundle #{command}" do
      expect { system "bundle #{command}" }
        .to output(
          a_string_including('Caching dependency records for bundler-licensed')
        )
        .to_stdout_from_any_process
    end
  end

  after(:all) do
    FileUtils.rm_rf(Dir.glob('.bundle/plugin'))
  end
end
