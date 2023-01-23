class Player
  attr_accessor

  def initialize(name)
    @name = name
    @lives = 3

    puts "--- #{name} has signed up for battle! ---"
  end

  def lose_life
    @lives -= 1
  end

end

