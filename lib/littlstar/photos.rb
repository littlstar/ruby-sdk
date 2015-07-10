module Littlstar
  class Photos

    def get(id)
      Littlstar.request(:get, "/photos/#{id}")
    end

    def all(query={})
      Littlstar.request(:get, '/photos', query)
    end

    def featured(query={})
      Littlstar.request(:get, '/photos/featured', query)
    end

    def latest(query={})
      Littlstar.request(:get, '/photos/latest', query)
    end

    def vr(query={})
      Littlstar.request(:get, '/photos/vr', query)
    end

    def comments_for(id, query={})
      Littlstar.request(:get, "/photos/#{id}/comments", query)
    end

  end
end
