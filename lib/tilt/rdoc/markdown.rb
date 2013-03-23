require "rdoc"
require "tilt"
require "tilt/template"

module Tilt
  module RDoc
    class Markdown < ::Tilt::Template
      VERSION = "0.1.0"

      attr_accessor :rdoc_options

      def prepare # :nodoc:
        @engine = if options.delete(:toc)
                    ::RDoc::Markup::ToTableOfContents
                  else
                    ::RDoc::Markup::ToHtml
                  end
        @rdoc_options = ::RDoc::Options.new
        @rdoc_options.pipe = options.delete(:pipe) || false
        @output = nil
      end

      def evaluate(scope, locals, &block) # :nodoc:
        formatter = if @engine.ancestors.include? ::RDoc::Markup::ToTableOfContents
                      @engine.new
                    else
                      @engine.new(@rdoc_options, nil)
                    end
        html = ::RDoc::Markdown.parse(data).accept(formatter)
        @output ||= if @engine.ancestors.include? ::RDoc::Markup::ToTableOfContents
                      html.map do |t|
                        "<li><a href='##{t.aref}'>#{t.plain_html}</a></li>"
                      end.join
                    else
                      html
                    end
      end
    end
  end

  register RDoc::Markdown, 'markdown', 'mkd', 'md'
end
