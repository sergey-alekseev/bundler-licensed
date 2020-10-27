# frozen_string_literal: true

require 'bundler/licensed/version'

module Bundler
  module Licensed
    class Error < StandardError; end

    Bundler::Plugin.add_hook('after-install-all') do
      system 'licensed cache -s bundler'
    end
  end
end
