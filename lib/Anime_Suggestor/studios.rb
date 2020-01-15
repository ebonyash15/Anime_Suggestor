require_relative './concerns.rb'
require 'nokogiri'
require 'open-uri'
class Studios
  extend Scrape::ClassMethods
  include Scrape::InstanceMethods
  @@all=[]
  attr_accessor :name, :studio, :url
  def initialize(name)
    @name=name
    save
  end
  def self.today
    puts self.all.collect{|studio|studio.name}
  end
  def url
    @formatted = self.name.split(' ').join('_').scan(/\w+/).join('').split('_').join('-').downcase
    @url = "https://www.anime-planet.com/anime/studios/#{@formatted}"
  end
  def animes
    Anime.all.collect{|anime| anime.studio==self}
  end
  def studio=
    self.class.all.find{|studio|studio.url==self.url}
  end
end

s_url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(s_url)
xml=Nokogiri::HTML(webpage)
studio_1=Studios.new(xml.css('a').text.scan(/(?<=tag)\w*[^0-9 ]/).to_s)
studio_2=Studios.new(xml.css('a').text.split(/\d+ anime/)[1])
studio_3= Studios.new(xml.css('a').text.split(/\d+ anime/)[2])
studio_4= Studios.new(xml.css('a').text.split(/\d+ anime/)[3])
studio_5= Studios.new(xml.css('a').text.split(/\d+ anime/)[4])
