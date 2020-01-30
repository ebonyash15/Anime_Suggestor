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
  # Add a class finder method called .find_by_name
# It takes a string argument that represents a name or a substring in a name.
# This method should return ALL instances of Studio whose name contains the substring provided as an argument.
# Examples:
# If I call Studio.find_by_name("a")
# I should get back an array of every studio that has the letter "a" in its name.
# If there are no matches, return an empty array
  def self.find_by_name(letters)
    Studio.all.select do |x|
      x.name.downcase.include?(letters.downcase)
    end
  end
end
