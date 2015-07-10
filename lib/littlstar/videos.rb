module Littlstar
  class Videos

    def get(id)
      Littlstar.request(:get, "/videos/#{id}")
    end

    def all(query={})
      Littlstar.request(:get, '/videos', query)
    end

    def sponsored(query={})
      Littlstar.request(:get, '/videos/sponsored', query)
    end

    def featured(query={})
      Littlstar.request(:get, '/videos/featured', query)
    end

    def latest(query={})
      Littlstar.request(:get, '/videos/latest', query)
    end

    def vr(query={})
      Littlstar.request(:get, '/videos/vr', query)
    end

    def comments_for(id, query={})
      Littlstar.request(:get, "/videos/#{id}/comments", query)
    end

  end
end
