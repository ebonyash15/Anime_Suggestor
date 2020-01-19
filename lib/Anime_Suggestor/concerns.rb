require_relative './studios.rb'
require_relative './animes.rb'
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
