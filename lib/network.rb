class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.map do |show|
      show.characters
    end.flatten
  end

  def actors_by_show
    by_show = {}
    shows.map do |show|
      by_show[show] = show.actors
    end
    by_show
  end

end
