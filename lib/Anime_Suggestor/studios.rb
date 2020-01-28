require_relative './concerns.rb'
class Studio
  @@all=[]
  attr_accessor :name, :anime, :anime_count
  def initialize
    self.save
  end
  def save
    @@all<<self
  end
  def self.all
    @@all
  end
end
