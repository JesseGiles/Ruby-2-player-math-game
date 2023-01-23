class Turn

  def initialize
    puts "----- NEW ROUND -----"

    puts "What is #{generate_number} plus #{generate_number} equal?"
  end

  def generate_number
    rand(21)
  end

end