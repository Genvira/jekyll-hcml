# frozen_string_literal: true

require_relative "hcml/converter"
require_relative "hcml/version"

require "open3"

module Jekyll
  module Hcml
    def self.hcml2html(content)
      stdout, stderr, status = Open3.capture3("hcml -", stdin_data: content)

      # Print stderr if it is not empty
      unless stderr.strip.empty?
        Jekyll.logger.warn stderr
      end

      # If the command failed, raise an error.
      unless status.success?
        Jekyll.logger.info "Failed to convert: #{content}"
        raise status.to_s
      end

      stdout
    end
  end
end
