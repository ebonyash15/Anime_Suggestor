require 'open-uri'
require 'nokogiri'
class Scraper
  def self.scrape_studios(index_url="https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc")
    attr_accessor :name, :anime, :anime_count
    page = Nokogiri::HTML(open(index_url))
    array=page.css("tr")
      array.each do |s|
        @name = s.css("td.volsChRating h2 a").text
        @anime_count = s.css("td.volsChRating a.items").text
        @anime = s.css("td.cardHand a ul li.card").attribute("title").value
        new_s = Studio.new
        new_s.anime=@anime
        new_s.name=@name
        new_s.anime_count=@anime_count
    end
  end
end
