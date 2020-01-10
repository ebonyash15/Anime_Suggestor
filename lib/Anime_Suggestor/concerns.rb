require 'nokogiri'
require 'open-uri'
module Scrape
  def InstanceMethods
  url = 'https://www.anime-planet.com/anime/studios/'
  webpage=open(url)
  xml=Nokogiri::HTML(webpage)
  #anime = xml.css('STUFF')
  end
  def ClassMethods
  end
end
