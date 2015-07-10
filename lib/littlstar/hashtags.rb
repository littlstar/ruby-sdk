module Littlstar
  class Hashtags

    def get(id)
      Littlstar.request(:get, "/hashtags/#{id}")
    end

    def all(query={})
      Littlstar.request(:get, '/hashtags', query)
    end

    def videos_for(id, query={})
      Littlstar.request(:get, "/hashtags/#{id}/videos", query)
    end

    def photos_for(id, query={})
      Littlstar.request(:get, "/hashtags/#{id}/photos", query)
    end

  end
end
