require_relative './concerns.rb'
class Anime
  @@all=[]
  attr_reader :studio, :name, :url
  def initialize(name, url)
    @name=name
    @url=url
    @studio= Studios.all.find{|studio|studio.url==url}
    save
  end
  def self.all
    @@all
  end
  def save
    @@all<<self
  end
end

s1a1= Anime.new('SCRAPED NAME', url2)
s1a2= Anime.new('SCRAPED NAME', url2)
s1a3= Anime.new('SCRAPED NAME', url2)
s1a4= Anime.new('SCRAPED NAME', url2)
s1a5= Anime.new('SCRAPED NAME', url2)
s2a1= Anime.new('SCRAPED NAME', url3)
s2a2= Anime.new('SCRAPED NAME', url3)
s2a3= Anime.new('SCRAPED NAME', url3)
s2a4= Anime.new('SCRAPED NAME', url3)
s2a5= Anime.new('SCRAPED NAME', url3)
s3a1= Anime.new('SCRAPED NAME', url4)
s3a2= Anime.new('SCRAPED NAME', url4)
s3a3= Anime.new('SCRAPED NAME', url4)
s3a4= Anime.new('SCRAPED NAME', url4)
s3a5= Anime.new('SCRAPED NAME', url4)
s4a1= Anime.new('SCRAPED NAME', url5)
s4a2= Anime.new('SCRAPED NAME', url5)
s4a3= Anime.new('SCRAPED NAME', url5)
s4a4= Anime.new('SCRAPED NAME', url5)
s4a5= Anime.new('SCRAPED NAME', url5)
s5a1= Anime.new('SCRAPED NAME', url6)
s5a2= Anime.new('SCRAPED NAME', url6)
s5a3= Anime.new('SCRAPED NAME', url6)
s5a4= Anime.new('SCRAPED NAME', url6)
s5a5= Anime.new('SCRAPED NAME', url6)
