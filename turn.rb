class Turn

  def initialize(player)
    num1 = generate_number
    num2 = generate_number
    @sum = num1 + num2
    
    puts "----- NEW ROUND -----"

    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
    print "> "

    @answer = $stdin.gets.chomp.to_i
  end

  def generate_number
    rand(21)
  end

  def answered_correctly?
    if @answer === @sum
      puts "------------- "
      puts "Correct! Flawless Victory!"
      return true
    else 
      puts "------------- "
      puts "Wrong! Your opponent uppercuts you."
      return false
    end
  end
  
end