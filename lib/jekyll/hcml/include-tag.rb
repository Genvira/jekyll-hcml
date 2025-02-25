# frozen_string_literal: true

module Jekyll
  module Tags
    class HcmlIncludeTag < IncludeTag
      def initialize(tag_name, markup, tokens)
        super
      end

      def render(context)
        text = super

        # Convert HCML includes to HTML
        if /\.hcml$/.match?(@file)
          text = Hcml.hcml2html text
        end

        text
      end
    end
  end
end

Liquid::Template.register_tag("include", Jekyll::Tags::HcmlIncludeTag)
