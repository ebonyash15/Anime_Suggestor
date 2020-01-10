class Anime
attr_accessor :studio, :name, :year, :synapsis
  def initialize
    @name=name
    @studio=name
    @studio.animes<<self
    @year=year
    @synapsis=synapsis
  end
end
