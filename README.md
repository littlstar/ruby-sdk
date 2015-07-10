# Littlstar Ruby Gem

This gem encapsulates the functionality needed to access content through the Littstar API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'littlstar'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install littlstar
```

## Usage

This gem defines seven classes that mimic the current Littlstar V1 API endpoints. These classes can be instantiated to interact with each endpoint individually and define the methods that are supported by their corresponding endpoints. Example responses for all endpoints can be found in the relevant sections of the Littlstar [API documentation](http://developer.littlstar.com/docs/).

### Search

API search endpoints can be accessed through the `Littlstar::Search` class.

```ruby
ls_search = Littlstar::Search.new

# Search across videos, photos, users, and channels
ls_search.all(q: 'search query')

# Search only videos
ls_search.videos(q: 'search query')

# Search only Photos
ls_search.photos(q: 'search query')

# Search only Users
ls_search.users(q: 'search query')

# Search only Channels
ls_search.channels(q: 'search query')
```

### Users

API user endpoints can be accessed through the `Littlstar::Users` class.

```ruby
ls_users = Littlstar::Users.new

# Get a single user
ls_users.get(id)

# Get a single user's videos
ls_users.videos_for(id, {optional: 'query_params_hash'})

# Get a single user's photos
ls_users.photos_for(id, {optional: 'query_params_hash'})

# Get a single user's channels
ls_users.channels_for(id, {optional: 'query_params_hash'})

# Get a single user's followers
ls_users.followers_for(id, {optional: 'query_params_hash'})

# Get users currently followed by a single user
ls_users.following_for(id, {optional: 'query_params_hash'})
```

### Videos

API video endpoints can be accessed through the `Littlstar::Videos` class.

```ruby
ls_videos = Littlstar::Videos.new

# Get a single video
ls_videos.get(id)

# Get all videos
ls_videos.all({optional: 'query_params_hash'})

# Get sponsored videos
ls_videos.sponsored({optional: 'query_params_hash'})

# Get featured videos
ls_videos.featured({optional: 'query_params_hash'})

# Get latest videos
ls_videos.latest({optional: 'query_params_hash'})

# Get VR videos
ls_videos.vr({optional: 'query_params_hash'})

# Get comments for a video
ls_videos.comments_for(id, {optional: 'query_params_hash'})
```

### Photos

API photo endpoints can be accessed through the `Littlstar::Photos` class.

```ruby
ls_photos = Littlstar::Photos.new

# Get a single photo
ls_photos.get(id)

# Get all photos
ls_photos.all({optional: 'query_params_hash'})

# Get featured photos
ls_photos.featured({optional: 'query_params_hash'})

# Get latest photos
ls_photos.latest({optional: 'query_params_hash'})

# Get VR photos
ls_photos.vr({optional: 'query_params_hash'})

# Get comments for a video
ls_photos.comments_for(id, {optional: 'query_params_hash'})
```

### Categories

API category endpoints can be accessed through the `Littlstar::Categories` class.

```ruby
ls_categories = Littlstar::Categories.new

# Get a single category
ls_categories.get(id)

# Get all categories
ls_categories.all({optional: 'query_params_hash'})

# Get single category videos
ls_categories.videos_for(id, {optional: 'query_params_hash'})

# Get single category photos
ls_categories.photos_for(id, {optional: 'query_params_hash'})
```

### Channels

API channel endpoints can be accessed through the `Littlstar::Channels` class.

```ruby
ls_channels = Littlstar::Channels.new

# Get a single channel
ls_channels.get(id)

# Get all channels
ls_channels.all({optional: 'query_params_hash'})

# Get single channel videos
ls_channels.videos_for(id, {optional: 'query_params_hash'})

# Get single channel photos
ls_channels.photos_for(id, {optional: 'query_params_hash'})
```

### Hashtags

API hashtag endpoints can be accessed through the `Littlstar::Hashtags` class.

```ruby
ls_hashtags = Littlstar::Hashtags.new

# Get a single hashtag
ls_hashtags.get(id)

# Get all hashtags
ls_hashtags.all({optional: 'query_params_hash'})

# Get single hashtag videos
ls_hashtags.videos_for(id, {optional: 'query_params_hash'})

# Get single hashtag photos
ls_hashtags.photos_for(id, {optional: 'query_params_hash'})
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/littlstar/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
