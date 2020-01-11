require 'pry'
require 'nokogiri'
require 'open-uri'
url = 'https://www.anime-planet.com/anime/studios/?sort=num_likes&order=desc' #studios sorted most to least loved
webpage=open(url)
xml=Nokogiri::HTML(webpage)
studio_name = xml.css('h2').text
   #  "MADHOUSEStudio GhibliBonesKyoto AnimationJ.C. StaffA-1 PicturesProduction I.GShaftSunriseGainaxToei AnimationStudi
   #  o DeenGONZOStudio PierrotBrain's BaseP.A. WorksufotableWHITE FOXXEBECManglobeStudio TriggerAICTMS EntertainmentSateligh
   #  tSILVER LINKStudio 4°CVisual WorksCoMix Wave FilmsWit StudioARMSfeel.ArtlandBEE TRAIN8-BitZexcs"
studio_url = xml.css('h2.href')
#anime = xml.css('STUFF')
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
