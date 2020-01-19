require 'open-uri'
require 'nokogiri'
class Scraper
  def self.scrape_studios(index_url="https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc")
    page = Nokogiri::HTML(open(index_url))
    studios=[]
    page.css("tr").each do |studio|
      name = studio.css("td.volsChRating h2 a").text
      anime_count = studio.css("td.volsChRating a.items").text
      anime = studio.css("td.cardHand a ul li.card").attribute("title").value
      studio_info = {:name => name,
        :anime_count => anime_count,
        :recommended_anime => anime}
      studios << studio_info
      end
   studios
  end
end
