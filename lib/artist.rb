require 'pry'

class Artist
attr_accessor :name

def initialize(name)
  @name = name
end

def songs
Song.all.select{|x| x.artist == self}
end

def add_song(song)
song.artist = self
end

def self.find_or_create_by_name(name)
   self.all.detect {|artist| artist.name == name} || Artist.new(name).save
 end

def self.song_count
Song.all.count
end

end
