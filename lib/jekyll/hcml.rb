# frozen_string_literal: true

require_relative "hcml/version"

require "open3"

module Jekyll
  # module Hcml
  #   class Error < StandardError; end
  #   # Your code goes here...
  # end

  class HcmlConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.hcml$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      # puts "Content: #{content}"
      # result = `hcml -`
      # puts "Result: #{result}"
      # result

      Jekyll.logger.info "Converting HCML to HTML:"

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
