class Turn

  def new_turn(player)
    num1 = generate_number
    num2 = generate_number
    sum = num1 + num2
    
    puts "----- NEW ROUND -----"

    puts "#{player}: What does #{num1} plus #{num2} equal?"
    print "> "

    answer = $stdin.gets.chomp.to_i
    puts "#{player} guessed: #{answer}"
    puts "correct answer is: #{sum}"

    if answer === sum
      puts "Correct! Flawless Victory!"
      return true
    else 
      puts "Wrong! Do not fail me again."
      return false
    end

  end

  def generate_number
    rand(21)
  end

end