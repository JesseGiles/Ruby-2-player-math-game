class Game
  attr_accessor

  def initialize
    puts "MATH KOMBAAAT! Please enter your fighters name:"
    
    print "> "

    #@player1_name = $stdin.gets.chomp
    @player1 = Player.new($stdin.gets.chomp)

    puts "And their opponent:"
    
    print "> "

    #@player2_name = $stdin.gets.chomp
    @player2 = Player.new($stdin.gets.chomp)

    puts "#{@player1.name} VS #{@player2.name}... round one, FIGHT!!"

    @current_player = @player1
    start_round(@current_player)
  end


  def start_round(current_player)
    new_round = Turn.new(current_player)

    if !new_round.answered_correctly?
      @current_player.lose_life
      if @current_player.lives === 0
        end_game
      else swap_current_player(@current_player)
        puts "Current Health Bars: #{@player1.name} #{@player1.lives} VS #{@player2.name} #{@player2.lives}"
        start_round(@current_player)
      end
    else
      puts "Current Health Bars: #{@player1.name} #{@player1.lives} VS #{@player2.name} #{@player2.lives}"
      swap_current_player(@current_player)
      start_round(@current_player)

      # if current_player === @player1
      #   @current_player = @player2
      #   start_round(@current_player)
      # else 
      #   @current_player = @player1
      #   start_round(@current_player)
      
    end
  end

  def swap_current_player(current_player)
    if current_player === @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def end_game
    puts "------------- "
    puts "------------- "
    puts "--- FINISH HIM --- "
    if @current_player === @player1
     puts "#{@player2.name} defeated #{@player1.name}. FATALITY."
     puts "#{@player2.name} wins with a final score: #{@player2.lives}/3"
    else 
      puts "#{@player1.name} defeated #{@player2.name}. FATALITY."
      puts "#{@player1.name} wins with a final score: #{@player1.lives}/3"
    end
  end

end