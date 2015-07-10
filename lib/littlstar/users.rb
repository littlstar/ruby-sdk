module Littlstar
  class Users

    def get(id)
      Littlstar.request(:get, "/users/#{id}")
    end

    def videos_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/videos", query)
    end

    def photos_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/photos", query)
    end

    def channels_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/channels", query)
    end

    def followers_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/followers", query)
    end

    def following_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/following", query)
    end

  end
end
