class Character
  attr_reader :name, :actor, :salary

  def initialize(character)
    @character = character
    @name = character[:name]
    @actor = character[:actor]
    @salary = character[:salary]
  end

end
