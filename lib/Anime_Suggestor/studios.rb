require_relative './concerns.rb'
class Studio
  def initialize(index)
    @index=index
    Scraper.scrape_studios[@index]
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
end

studio1=Studio.new(0)
studio2=Studio.new(1)
studio3=Studio.new(2)
studio4=Studio.new(3)
studio5=Studio.new(4)
