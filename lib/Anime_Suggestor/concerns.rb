require 'pry'
require 'nokogiri'
require 'open-uri'
url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(url)
xml=Nokogiri::HTML(webpage)
studio = xml.css('h2')
#anime = xml.css('STUFF')
binding.pry
module Scrape
  module InstanceMethods
    def something
    end
  end
  module ClassMethods
    def nothing
    end
  end
end
