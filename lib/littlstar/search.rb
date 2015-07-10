module Littlstar
  class Search

    def all(query={})
      Littlstar.request(:get, '/search')
    end

    def videos(query={})
      Littlstar.request(:get, '/search/videos')
    end

    def photos(query={})
      Littlstar.request(:get, '/search/photos')
    end

    def users(query={})
      Littlstar.request(:get, '/search/users')
    end

    def channels(query={})
      Littlstar.request(:get, '/search/channels')
    end

  end
end
