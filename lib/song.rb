require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    @@count = 0

    @@artists = []

    @@genres = []

    def initialize name, artist, genre
        @name = name
        @artist = artist 
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_histogram = {}
        @@genres.select do |song|
            if !genre_histogram[song]
                genre_histogram[song] = 1
            else 
                genre_histogram[song] += 1
            end
        end
        genre_histogram
    end

    def self.artist_count
        artist_histogram = {}
        @@artists.select do |artist|
            if !artist_histogram[artist]
                artist_histogram[artist] = 1
            else 
                artist_histogram[artist] += 1
            end
        end
        artist_histogram
    end

end
