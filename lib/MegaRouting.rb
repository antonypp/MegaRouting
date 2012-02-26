require "MegaRouting/version"

module MegaRouting
  autoload 'Routing', 'MegaRouting/routing'
  # Your code goes here...
  autoload 'Route', 'MegaRouting/route'
  autoload 'UrlHelper', 'MegaRouting/url_helper'

  def self.build(&block)
    Builder.build(&block)
  end
end
