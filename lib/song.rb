class Song

  # * There should be an `attr_accessor` for those three attributes.
  attr_accessor :name :artist :genre
  # * Create a class variable, `@@count`. We will use this variable to keep
  # track of 0 the number of new songs that are created from the `Song` class.
  # Set this variable equal to `0`.
  @@count = 0
  @@genres = []
  # * Define your `Song` class such that an individual song is initialized with a name,
  # artist and genre.
  # Your `#initialize` method should use the `@@count` variable and increment the
  # value of that variable by `1`.
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end


end
