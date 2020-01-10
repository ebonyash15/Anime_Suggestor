require_relative './concerns.rb'
class Anime
  extend Scrape::ClassMethods
  include Scrape::InstanceMethods
  @@all = []
  attr_accessor :studio, :name, :year, :synapsis
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
