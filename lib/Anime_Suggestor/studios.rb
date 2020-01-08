class AnimeSuggestor::Studios
  attr_accessor :name, :url, :animes
  def self.today
    #returns the top five studios
    studio_1 = self.new
    studio_1.name = "Scrape name"
    studio_1.url = "Scrape url"
    studio_1.animes = ["Scrape anime 1",
      "Scrape anime 2",
      "Scrape anime 3",
      "Scrape anime 4",
      "Scrape anime 5",
      "Scrape anime 6",
      "Scrape anime 7".
      "Scrape anime 8",
      "Scrape anime 9",
      "Scrape anime 10"]
    studio_1.animes[0]={name:"Scrape anime 1 name",
      year:"Scrape anime 1 release date",
      synapsis: "Scrape anime 1 synapsis"}
    studio_1.animes[1]={name:"Scrape anime 2 name",
      year:"Scrape anime 2 release date",
      synapsis: "Scrape anime 2 synapsis"}
      #so on so forth
    studio_2 =  self.new
    studio_3 =  self.new
    studio_4 =  self.new
    studio_5 =  self.new
    puts "List of studios"
  end
end
