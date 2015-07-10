module Littlstar
  class Users

    def get(id)
      Littlstar.request(:get, "/users/#{id}")
    end

    def videos_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/videos")
    end

    def photos_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/photos")
    end

    def channels_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/channels")
    end

    def followers_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/followers")
    end

    def following_for(id, query={})
      Littlstar.request(:get, "/users/#{id}/following")
    end

  end
end
