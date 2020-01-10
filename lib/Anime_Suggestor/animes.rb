require_relative './concerns.rb'
class Anime
@@all = []
attr_accessor :studio, :name, :year, :synapsis
include Scrape::InstanceMethods
extend Scrape::ClassMethods
  def initialize
    @name=name
    @studio=studio
    @year=year
    @synapsis=synapsis
  end
  def self.all
    @@all
  end
end
