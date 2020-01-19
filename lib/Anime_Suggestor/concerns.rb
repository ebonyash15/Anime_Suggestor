require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative './studios.rb'
require_relative './animes.rb'

url1   =  'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage   =  open(url1)
xml1   =  Nokogiri::HTML(webpage)

url2   =  studio_1.url
page1   =  open(url2)
xml2   =  Nokogiri::HTML(page1)
#anime.name   =  xml2.css('h3')

url3  = studio_2.url
page2  = open(url3)
xml3  = Nokogiri::HTML(page2)
#anime.name   =  xml3.css('h3')

url4  = studio_3.url
page3  = open(url4)
xml4  = Nokogiri::HTML(page3)
#anime.name   =  xml4.css('h3')

url5  = studio_4.url
page4  = open(url5)
xml5  = Nokogiri::HTML(page4)
#anime.name   =  xml5.css('h3')

url6  = studio_5.url
page5  = open(url6)
xml6  = Nokogiri::HTML(page5)
#anime.name   =  xml6.css('h3')

  #some iteration 10.times do... anime.studio   =  studio_1
