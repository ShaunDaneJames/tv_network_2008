class Network
  attr_reader :name,
              :shows

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      show.characters.find_all do |character|
        if (character.name == character.name.upcase) &&
          character.salary >= 500_000
          main_characters << character
        end
      end
    end
    main_characters
  end
end
