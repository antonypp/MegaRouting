module MegaRouting
  class Routing
    def initialize
      @routes = []
    end

    def match(args)
      @routes << Route.new(args)
    end
    def url_helpers
      @url_helpers ||= UrlHelper.build(@routes)
    end

    def find_route_by_url(url)
      @routes.each do |route|
        if route.match?(url)
          return route
        end
      end
      false
    end
  end
end
