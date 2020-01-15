require 'pry'
require 'nokogiri'
require 'open-uri'
module Scrape
  module InstanceMethods
    @@all=[]
    def save
      @@all<<self
    end
  end
  module ClassMethods
    @@all=[]
    def all
      @@all
    end
  end
end


s_url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(s_url)
xml=Nokogiri::HTML(webpage)

url2=studio_1.url
page1=open(url2)
xml2=Nokogiri::HTML(page1)

url3=studio_2.url
page2=open(url3)
xml3=Nokogiri::HTML(page2)

url4=studio_3.url
page3=open(url4)
xml4=Nokogiri::HTML(page3)

url5=studio_4.url
page4=open(url5)
xml5=Nokogiri::HTML(page4)

url6=studio_5.url
page5=open(url6)
xml6=Nokogiri::HTML(page5)
