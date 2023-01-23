class Game
  attr_accessor

  def initialize
    puts "MATH KOMBAAAT! Please enter your fighters name:"
    
    print "> "

    @player1_name = $stdin.gets.chomp
    @player1 = Player.new(@player1_name)

    puts "And their opponent:"
    
    print "> "

    @player2_name = $stdin.gets.chomp
    @player2 = Player.new(@player2_name)

    puts "#{@player1_name} VS #{@player2_name}... round one, FIGHT!!"

    @current_player = @player1.name
    start_round(@current_player)
  end


  def start_round(current_player)
    new_round = Turn.new
    new_round.new_turn(current_player)

    if new_round.answered_correctly?
      puts "Nice"
    else 
      @player1.lose_life
    end

  end

  def end_game
  end


end