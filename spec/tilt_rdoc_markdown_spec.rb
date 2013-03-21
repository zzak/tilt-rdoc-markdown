begin
  require_relative 'spec_helper'
rescue LoadError
  require File.expand_path '../spec_helper.rb', __FILE__
end

describe Tilt::RDoc::Markdown do

  it "should be registered for '.md' files" do
    assert Tilt.mappings['md'].include?(Tilt::RDoc::Markdown)
  end

  it "should be registered for '.mkd' files" do
    assert Tilt.mappings['mkd'].include?(Tilt::RDoc::Markdown)
  end

  it "should be registered for '.markdown' files" do
    assert Tilt.mappings['markdown'].include?(Tilt::RDoc::Markdown)
  end

  it "should prepare and evaluate templates on #render" do
    template = Tilt::RDoc::Markdown.new { |t| "# Hello World!" }
    doc = Nokogiri::HTML(template.render)
    assert_equal "Hello World!", doc.search("h1").text
  end
end
