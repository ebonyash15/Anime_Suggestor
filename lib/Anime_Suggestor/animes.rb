require_relative './concerns.rb'
require 'nokogiri'
require 'open-uri'
class AnimeSuggestor::Anime
  extend Scrape::ClassMethods
  include Scrape::InstanceMethods
  attr_reader :studio, :name, :url
  def initialize(name, url)
    @name=name
    @url=url
    @studio=AnimeSuggestor::Studios.all.find{|studio|studio.url==url}
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


s1a1=AnimeSuggestor::Anime.new('SCRAPED NAME', url2)
s1a2=AnimeSuggestor::Anime.new('SCRAPED NAME', url2)
s1a3=AnimeSuggestor::Anime.new('SCRAPED NAME', url2)
s1a4=AnimeSuggestor::Anime.new('SCRAPED NAME', url2)
s1a5=AnimeSuggestor::Anime.new('SCRAPED NAME', url2)
s2a1=AnimeSuggestor::Anime.new('SCRAPED NAME', url3)
s2a2=AnimeSuggestor::Anime.new('SCRAPED NAME', url3)
s2a3=AnimeSuggestor::Anime.new('SCRAPED NAME', url3)
s2a4=AnimeSuggestor::Anime.new('SCRAPED NAME', url3)
s2a5=AnimeSuggestor::Anime.new('SCRAPED NAME', url3)
s3a1=AnimeSuggestor::Anime.new('SCRAPED NAME', url4)
s3a2=AnimeSuggestor::Anime.new('SCRAPED NAME', url4)
s3a3=AnimeSuggestor::Anime.new('SCRAPED NAME', url4)
s3a4=AnimeSuggestor::Anime.new('SCRAPED NAME', url4)
s3a5=AnimeSuggestor::Anime.new('SCRAPED NAME', url4)
s4a1=AnimeSuggestor::Anime.new('SCRAPED NAME', url5)
s4a2=AnimeSuggestor::Anime.new('SCRAPED NAME', url5)
s4a3=AnimeSuggestor::Anime.new('SCRAPED NAME', url5)
s4a4=AnimeSuggestor::Anime.new('SCRAPED NAME', url5)
s4a5=AnimeSuggestor::Anime.new('SCRAPED NAME', url5)
s5a1=AnimeSuggestor::Anime.new('SCRAPED NAME', url6)
s5a2=AnimeSuggestor::Anime.new('SCRAPED NAME', url6)
s5a3=AnimeSuggestor::Anime.new('SCRAPED NAME', url6)
s5a4=AnimeSuggestor::Anime.new('SCRAPED NAME', url6)
s5a5=AnimeSuggestor::Anime.new('SCRAPED NAME', url6)
