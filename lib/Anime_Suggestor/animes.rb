require_relative './concerns.rb'
require 'nokogiri'
require 'open-uri'
class Anime
  extend Scrape::ClassMethods
  include Scrape::InstanceMethods
  @@all = []
  attr_reader :studio, :name, # :year, :synapsis
  def initialize
    @name=name
    @studio=studio
  #  @year=year
  #  @synapsis=synapsis
    self.save
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

#anime.year = result.css('') #add later when ready
#anime.synapsis = result.css('') #add later when ready
#show names then allow user to select a name.year or name.synapsis

##<Nokogiri::XML::Element:0x176f8e4 name="h2" attributes=[#<Nokogiri::XML::Attr:0x17
#6f86c name="itemprop" value="name">, #<Nokogiri::XML::Attr:0x176f858 name="class" value="collectionName theme-font">] c
#hildren=[#<Nokogiri::XML::Element:0x176ee80 name="a" attributes=[#<Nokogiri::XML::Attr:0x176edf4 name="href" value="/an
#ime/studios/studio-trigger">, #<Nokogiri::XML::Attr:0x176edb8 name="itemprop" value="url">] children=[#<Nokogiri::XML::
#Text:0x176e23c "Studio Trigger">]>]>,
