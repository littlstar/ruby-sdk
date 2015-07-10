module Littlstar
  class Categories

    def get(id)
      Littlstar.request(:get, "/categories/#{id}")
    end

    def all(query={})
      Littlstar.request(:get, '/categories', query)
    end

    def videos_for(id, query={})
      Littlstar.request(:get, "/categories/#{id}/videos")
    end

    def photos_for(id, query={})
      Littlstar.request(:get, "/categories/#{id}/photos")
    end

  end
end
