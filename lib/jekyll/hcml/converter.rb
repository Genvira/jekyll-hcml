# frozen_string_literal: true

module Jekyll
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
      Jekyll.logger.info "Converting HCML to HTML:"

      Hcml.hcml2html content
    end
  end
end
