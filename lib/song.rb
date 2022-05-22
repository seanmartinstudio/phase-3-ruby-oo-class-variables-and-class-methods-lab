require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    
    end

    def self.count
        @@count
    end

    def self.artists
        filtered_artists_arr = @@artists.uniq
        filtered_artists_arr
    end

    def self.genres
        filtered_genres_arr = @@genres.uniq
        filtered_genres_arr
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end
