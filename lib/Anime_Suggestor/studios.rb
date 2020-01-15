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
  def scrape
    url = 'https://www.anime-planet.com/anime/studios/'
    webpage=open(url)
    xml=Nokogiri::HTML(webpage)
    studio = xml.css('a.href')
    anime = xml.css('h3')
    binding.pry
  end
  def animes
    Anime.all.collect{|anime| anime.studio==self}
  end
end

s_url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(s_url)
xml=Nokogiri::HTML(webpage)
studio_names = xml.css('h2').text
wrongly = studio_names.split(' ').join('').split /(?=[A-Z])/

studio_1=Studio.new
studio_2=Studio.new
studio_3=Studio.new
studio_4=Studio.new
studio_5=Studio.new
#Essentially hardcoding for formatting, will break if order changes. Review and revise.
studio_1.name=wrongly[0..7].join('')
studio_2.name=wrongly[8..9].join(' ')
studio_3.name=wrongly[10]
studio_4.name=wrongly[11..12].join(' ')
studio_5.name="#{wrongly[13..14].join('')} #{wrongly[15]}"
