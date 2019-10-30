class Artist
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def add_song(song)
		song.artist = self
		#puts "update Songs: #{@@songs} Song: #{song}"
	end

	def add_song_by_name(name)
		song = Song.new(name)
		song.artist = self
		#puts "update Songs: #{@@songs} Song: #{song}"
	end

	def songs
		#puts "Total Songs: #{Song.all}"
		Song.all
	end

	def self.song_count
		#puts "Total Songs Count: #{Song.all.count}"
		Song.all.count
	end
end