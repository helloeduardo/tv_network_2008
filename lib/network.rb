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

  def actors
    @shows.map do |show|
      show.actors
    end.flatten.uniq
  end

  def shows_by_actor
    by_actor = {}

    # create hash keys set to empty arrays
    actors.each do |actor|
      by_actor[actor] = []
    end

    # shovel in shows each actor is in
    actors_by_show.each do |show, actors|
      actors.each do |actor|
        by_actor[actor] << show
      end
    end

    by_actor
  end

  def prolific_actors
    prolific = []
    shows_by_actor.each do |actor, shows|
      if shows.length > 1
        prolific << actor
      end
    end
    prolific
  end

end
