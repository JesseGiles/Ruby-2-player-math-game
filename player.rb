class Player
  attr_accessor

  def initialize(name)
    @name = name
    @lives = 3

    puts "--- #{name} has entered the arena! ---"
  end

  def lose_life
    @lives -= 1
    puts "#{@name} is down to #{@lives} health"
  end

end

