#file acts as environment - requiring all relevant files
require_relative './Anime_Suggestor/version.rb'
require_relative './Anime_Suggestor/cli.rb'
require_relative './Anime_Suggestor/studios.rb'
require-relative './Anime_Suggestor/animes.rb'
#scraped data to utilize in studios.rb and animes.rb
require 'nokogiri'
require 'open-uri'
webpage=open('')
xml=Nokogiri::HTML(webpage)
#studio = xml.css('STUFF')
#anime = xml.css('STUFF')
