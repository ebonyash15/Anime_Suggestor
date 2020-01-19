require_relative './concerns.rb'
class Studio
@@all=[]
  def initialize(index)
    @index=index
    Scraper.scrape_studios[@index]
    @@all<<self
  end
  def name
    Scraper.scrape_studios[@index][:name]
  end
  def anime_count
    Scraper.scrape_studios[@index][:anime_count]
  end
  def anime
    Scraper.scrape_studios[@index][:recommended_anime]
  end
  def self.all
    @@all
  end
end
