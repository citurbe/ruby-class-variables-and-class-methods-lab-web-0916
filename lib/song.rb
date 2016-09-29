class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
@@songs = []

def initialize(song_name, artist, genre)
	self.name = song_name
	self.artist = artist
	self.genre = genre
	@@count += 1
	@@artists << artist
	@@genres << genre 
	@@songs << self
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
	@@genres.each_with_object({}) do |genre, genre_hash|
		if genre_hash.keys.include?(genre)
			genre_hash[genre] += 1
		else
			genre_hash[genre] = 1
		end
	end
end

def self.artist_count
	@@artists.each_with_object({}) do |artist, artist_hash|
		if artist_hash.keys.include?(artist)
			artist_hash[artist] += 1
		else
			artist_hash[artist] = 1
		end
	end
end

end