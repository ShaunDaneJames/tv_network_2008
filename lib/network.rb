class Network
  attr_reader :name,
              :shows

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end
  
end
