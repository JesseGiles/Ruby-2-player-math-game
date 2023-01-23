class Game
  attr_accessor

  def initialize
    puts "MATH KOMBAAAT! Please enter your fighters name:"
    
    print "> "

    @player1 = $stdin.gets.chomp
    p1 = Player.new(@player1)

    puts "And their opponent:"
    
    print "> "

    @player2 = $stdin.gets.chomp
    p2 = Player.new(@player2)

    puts "#{@player1} VS #{@player2}... round one, FIGHT!!"

    start_game
    
  end

  def start_game
    new_game = Turn.new
    new_game.new_turn(@player1)

  end

  def end_game
  end


end