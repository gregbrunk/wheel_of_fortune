class WheelOfFortune
  attr_reader :theme, :phrase 
  attr_accessor :guesses
  def initialize(hash)
    @theme = hash[:theme]
    @phrase = hash[:phrase]
    @guesses = []
  end

  def to_s
    return @phrase
  end

  def can_i_have?(input)
    downcase_input = input.downcase
    @guesses.push(downcase_input)
    downcase_phrase_array = @phrase.downcase.chars
    if downcase_phrase_array.include? downcase_input
      return true
    else 
      return false
    end
  end

  def game_over?
  end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end
