require 'pry'
require_relative './concerns.rb'
require 'nokogiri'
require 'open-uri'
class AnimeSuggestor::Studios
  extend Scrape::ClassMethods
  include Scrape::InstanceMethods
  attr_accessor :name, :animes, :url
  def initialize(name)
    @name=name
    @@all<<self
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
end

s_url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(s_url)
xml=Nokogiri::HTML(webpage)
studio_1=Studio.new(xml.css('a').text.scan(/(?<=tag)\w*[^0-9 ]/).to_s)
studio_2=Studio.new(xml.css('a').text.split(/\d+ anime/)[1])
studio_3=Studio.new(xml.css('a').text.split(/\d+ anime/)[2])
studio_4=Studio.new(xml.css('a').text.split(/\d+ anime/)[3])
studio_5=Studio.new(xml.css('a').text.split(/\d+ anime/)[4])
