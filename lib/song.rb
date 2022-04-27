class Song

    attr_accessor :artist, :genre, :name

    @@count = 0
    @@genres = []
    @@artists = []

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

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
        # genre = {}
        # @@genres.each do |genre|
        #     if genre_count[genre]
        #         genre_count[genre] += 1
        #     else
        #         genre_count[genre] = 1
        #     end
        # end
        # genre_count
    end



    def self.artist_count
        @@artists.tally
    end
end
