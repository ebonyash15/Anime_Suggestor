require 'pry'
require 'nokogiri'
require 'open-uri'
s_url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(s_url)
xml=Nokogiri::HTML(webpage)
studio_names = xml.css('h2').text
wrongly = studio_names.split(' ').join('').split /(?=[A-Z])/ #mostly seperated, array of incorrect strings
#  ["M", "A", "D", "H", "O", "U", "S", "E", "Studio", "Ghibli", "Bones", "Kyoto", "Animation", "J.", "C.", "Staff", "A
#  -1", "Pictures", "Production", "I.", "G", "Shaft", "Sunrise", "Gainax", "Toei", "Animation", "Studio", "Deen", "G", "O"
#  , "N", "Z", "O", "Studio", "Pierrot", "Brain's", "Base", "P.", "A.", "Worksufotable", "W", "H", "I", "T", "E", "F", "O"
#  , "X", "X", "E", "B", "E", "C", "Manglobe", "Studio", "Trigger", "A", "I", "C", "T", "M", "S", "Entertainment", "Sateli
#  ght", "S", "I", "L", "V", "E", "R", "L", "I", "N", "K", "Studio4°", "C", "Visual", "Works", "Co", "Mix", "Wave", "Films
#  ", "Wit", "Studio", "A", "R", "M", "Sfeel.", "Artland", "B", "E", "E", "T", "R", "A", "I", "N8-", "Bit", "Zexcs"]
studio_1=Studio.new
studio_2=Studio.new
studio_3=Studio.new
studio_4=Studio.new
studio_5=Studio.new
studio_1.name=wrongly[0..7].join('')
studio_2.name=wrongly[8..9].join(' ')
studio_3.name=wrongly[10]
studio_4.name=wrongly[11..12].join(' ')
studio_5.name="#{wrongly[13..14].join('')} #{wrongly[15]}"

studio_url = xml.css('h2 a href') #Not yet working

a_url = 'https://www.anime-planet.com/anime/studios/' #interpolate studio name once formatted (.downcase, ' '>'-', '.'>'')
webpage=open(a_url)
result=Nokogiri::HTML(webpage)
anime.name = result.css('')
anime.year = result.css('')
anime.synapsis = result.css('')
#some iteration 10.times do... anime.studio = studio_1
#show names then allow user to select a name.year or name.synapsis

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
##<Nokogiri::XML::Element:0x176f8e4 name="h2" attributes=[#<Nokogiri::XML::Attr:0x17
#6f86c name="itemprop" value="name">, #<Nokogiri::XML::Attr:0x176f858 name="class" value="collectionName theme-font">] c
#hildren=[#<Nokogiri::XML::Element:0x176ee80 name="a" attributes=[#<Nokogiri::XML::Attr:0x176edf4 name="href" value="/an
#ime/studios/studio-trigger">, #<Nokogiri::XML::Attr:0x176edb8 name="itemprop" value="url">] children=[#<Nokogiri::XML::
#Text:0x176e23c "Studio Trigger">]>]>,
