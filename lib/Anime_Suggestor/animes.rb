require_relative './concerns.rb'
require 'nokogiri'
require 'open-uri'
class Anime
  extend Scrape::ClassMethods
  include Scrape::InstanceMethods
  attr_reader :studio, :name, :url
  def initialize(name, url)
    @name=name
    @url=url
    @studio=Studio.all.find{|studio|studio.url==url}
    save
  end
  def name=()
    formatted = self.studio.name.downcase.split('.').join('').split(' ').join('_')
    a_url = 'https://www.anime-planet.com/anime/studios/#{formatted}'
    webpage=open(a_url)
    result=Nokogiri::HTML(webpage)
    anime.name = result.css('h3')
    #some iteration 10.times do... anime.studio = studio_1
  end
end
1a1=Aninme.new(SCRAPED NAME, URL)
s1a2=Aninme.new(SCRAPED NAME, URL)
s1a3=Aninme.new(SCRAPED NAME, URL)
s1a4=Aninme.new(SCRAPED NAME, URL)
s1a5=Aninme.new(SCRAPED NAME, URL)
s2a1=Aninme.new(SCRAPED NAME, URL)
s2a2=Aninme.new(SCRAPED NAME, URL)
s2a3=Aninme.new(SCRAPED NAME, URL)
s2a4=Aninme.new(SCRAPED NAME, URL)
s2a5=Aninme.new(SCRAPED NAME, URL)
s3a1=Aninme.new(SCRAPED NAME, URL)
s3a2=Aninme.new(SCRAPED NAME, URL)
s3a3=Aninme.new(SCRAPED NAME, URL)
s3a4=Aninme.new(SCRAPED NAME, URL)
s3a5=Aninme.new(SCRAPED NAME, URL)
s4a1=Aninme.new(SCRAPED NAME, URL)
s4a2=Aninme.new(SCRAPED NAME, URL)
s4a3=Aninme.new(SCRAPED NAME, URL)
s4a4=Aninme.new(SCRAPED NAME, URL)
s4a5=Aninme.new(SCRAPED NAME, URL)
s5a1=Aninme.new(SCRAPED NAME, URL)
s5a2=Aninme.new(SCRAPED NAME, URL)
s5a3=Aninme.new(SCRAPED NAME, URL)
s5a4=Aninme.new(SCRAPED NAME, URL)
s5a5=Aninme.new(SCRAPED NAME, URL)
