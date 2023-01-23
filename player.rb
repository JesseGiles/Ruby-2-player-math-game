class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3

    puts "--- #{name} has entered the arena! ---"
  end

  def lose_life
    @lives -= 1
  end

end

