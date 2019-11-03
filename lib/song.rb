require 'pry'
class Song

  # * There should be an `attr_accessor` for those three attributes.
  attr_accessor :name, :artist, :genre
  # * Create a class variable, `@@count`. We will use this variable to keep
  # track of 0 the number of new songs that are created from the `Song` class.
  # Set this variable equal to `0`.
  @@count = 0
  @@genres = []
  @@artists = []
  # * Define your `Song` class such that an individual song is initialized with a name,
  # artist and genre.
  # Your `#initialize` method should use the `@@count` variable and increment the
  # value of that variable by `1`.
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def genres
    @@genres
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    # {"pop" => 1, "rap" => 2}
    # binding.pry
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
    # binding.pry
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
