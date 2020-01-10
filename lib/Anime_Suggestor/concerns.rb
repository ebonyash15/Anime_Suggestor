require 'nokogiri'
require 'open-uri'
module Scrape
  module InstanceMethods
    def something
      url = 'https://www.anime-planet.com/anime/studios/'
      webpage=open(url)
      xml=Nokogiri::HTML(webpage)
      studio = xml.css('a.href')
      anime = xml.css('STUFF')
    end
  end
  module ClassMethods
    def nothing
      url = 'https://www.anime-planet.com/anime/studios/'
      webpage=open(url)
      xml=Nokogiri::HTML(webpage)
    end
  end
end
