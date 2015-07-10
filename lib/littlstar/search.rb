module Littlstar
  class Search

    def all(query={})
      Littlstar.request(:get, '/search', query)
    end

    def videos(query={})
      Littlstar.request(:get, '/search/videos', query)
    end

    def photos(query={})
      Littlstar.request(:get, '/search/photos', query)
    end

    def users(query={})
      Littlstar.request(:get, '/search/users', query)
    end

    def channels(query={})
      Littlstar.request(:get, '/search/channels', query)
    end

  end
end
