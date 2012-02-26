module MegaRouting
  class UrlHelper
    def self.build(routes)
      inst = new
        routes.each do |r|
          name = "#{r.as}_path"
      (class<<self; self;end).class_eval do
          define_method  name do |id|
            r.build_url(id)
          end
        end
      end
      inst.class
    end
  end
end
