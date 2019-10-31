class Song

    @@count = 0
    @@genres = []
    @@artists = []
    
    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count #returns count of all Songs
        @@count
    end

    def self.artists #returns array of all Song artists
        @@artists.uniq
    end

    def self.genres #returns array of all Song genres
        @@genres.uniq
    end

    def self.genre_count #returns hash where genres are keys and value is # of songs
        genre_counts = {}
        list_of_genres = self.genres()

        i = 0
        while i < list_of_genres.length
            genre_name = list_of_genres[i]
            genre_selection = @@genres.select { | song_genre | 
                song_genre == genre_name
            }
            genre_counts[genre_name] = genre_selection.length
            i += 1
        end
        genre_counts
    end

    def self.artist_count
        artist_counts = {}
        list_of_artists = self.artists()

        i = 0
        while i < list_of_artists.length
            artist_name = list_of_artists[i]
            artist_selection = @@artists.select { | song_artist | 
                song_artist == artist_name
            }
            artist_counts[artist_name] = artist_selection.length
            i += 1
        end
        artist_counts    
    end

end