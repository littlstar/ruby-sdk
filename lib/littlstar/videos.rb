module Littlstar
  class Videos

    def get(id)
      Littlstar.request(:get, "/videos/#{id}")
    end

    def all()
      Littlstar.request(:get, '/videos')
    end

    def sponsored()
      Littlstar.request(:get, '/videos/sponsored')
    end

    def featured()
      Littlstar.request(:get, '/videos/featured')
    end

    def latest()
      Littlstar.request(:get, '/videos/latest')
    end

    def vr()
      Littlstar.request(:get, '/videos/vr')
    end

    def comments_for(id)
      Littlstar.request(:get, "/videos/#{id}/comments")
    end

  end
end
