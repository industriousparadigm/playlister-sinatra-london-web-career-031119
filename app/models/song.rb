require_relative "../models/concerns/slugifiable.rb"

class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  # def initialize(name: name, genres: genres)
  #   @name = name
  #   genres.each do |genre|
  #     SongGenre.create(self, Genre.find_by(name: genre))
  #   end
  #   Song.all << self
  # end

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  # def slug
  #   self.name.downcase.gsub(" ", "-")
  # end

  # def self.find_by_slug(slug)
  #   Song.all.find do |song|
  #     song.slug == slug
  #   end
  # end
end