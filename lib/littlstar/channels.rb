module Littlstar
  class Channels

    def get(id)
      Littlstar.request(:get, "/channels/#{id}")
    end

    def all(query={})
      Littlstar.request(:get, '/channels', query)
    end

    def videos_for(id, query={})
      Littlstar.request(:get, "/channels/#{id}/videos", query)
    end

    def photos_for(id, query={})
      Littlstar.request(:get, "/channels/#{id}/photos", query)
    end

  end
end
