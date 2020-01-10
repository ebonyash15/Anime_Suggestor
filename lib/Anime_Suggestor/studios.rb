require 'pry'
require_relative './bin/concerns'
class AnimeSuggestor::Studios
  attr_accessor :name, :url, :animes
  def self.today
    #returns the top five studios
    studio_1 = self.new
    studio_1.name = "Scrape name"
    studio_1.url = "Scrape url"
    studio_1.animes = Anime.all.collect{|anime| anime.studio==self}

    studio_2 =  self.new
    studio_3 =  self.new
    studio_4 =  self.new
    studio_5 =  self.new
    puts "List of studios"
    studio = xml.css('a.href')
    brinding.pry
  end
end
