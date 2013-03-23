# Tilt::Rdoc::Markdown

[![Build Status](https://travis-ci.org/zzak/tilt-rdoc-markdown.png?branch=master)](https://travis-ci.org/zzak/tilt-rdoc-markdown)

Tilt extension to render Markdown using RDoc

## Installation

Add this line to your application's Gemfile:

    gem 'tilt-rdoc-markdown'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tilt-rdoc-markdown

## Usage

```ruby
require 'tilt'
require 'tilt/rdoc/markdown'

template = Tilt.new('views/hello.md')
#=> #<Tilt::RDoc::Markdown>
output = template.render
#=> "<h1>Hello, World!</h1>"
```

See [tilt usage](https://github.com/rtomayko/tilt#basic-usage) for more info.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
