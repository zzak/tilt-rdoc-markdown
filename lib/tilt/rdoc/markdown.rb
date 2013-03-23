require "rdoc"
require "tilt"
require "tilt/template"

module Tilt
  module RDoc
    class Markdown < ::Tilt::Template
      VERSION = "0.1.0"

      def prepare # :nodoc:
        @engine = ::RDoc::Markdown.new
        @output = nil
      end

      def evaluate(scope, locals, &block) # :nodoc:
        opts = ::RDoc::Options.new
        opts.pipe = true # TODO: find a good way to expose this to tilt users
        formatter = ::RDoc::Markup::ToHtml.new(opts, nil)
        @output ||= @engine.parse(data).accept(formatter)
      end
    end
  end

  register RDoc::Markdown, 'markdown', 'mkd', 'md'
end
