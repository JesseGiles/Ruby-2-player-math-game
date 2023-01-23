class Game
  attr_accessor

  def initialize
    puts "New math game. Please enter the first players name"
    
    print "> "

    @player1 = $stdin.gets.chomp
    p1 = Player.new(@player1)

    puts "And now the second players name"
    
    print "> "

    @player2 = $stdin.gets.chomp
    p2 = Player.new(@player2)

    puts "#{@player1} VS #{@player2} : FIGHT!!"
    
  end

end