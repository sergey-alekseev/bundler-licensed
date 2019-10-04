# frozen_string_literal: true

RSpec.describe Bundler::Licensed do
  it 'has a version number' do
    expect(Bundler::Licensed::VERSION).not_to be nil
  end
end
