module MegaRouting
  class Route
    attr_reader :as
    def initialize(conf)
      @as = conf.delete(:as)
      @match = conf.keys.first
      @path = conf[@match]
      @regexp = @match.gsub(':id', '(\w+)')
    end

    def build_url(id)
      @match.gsub(':id', id.to_s)
    end

    def match?(url)
      url.match(@regexp)
    end
  end
end
