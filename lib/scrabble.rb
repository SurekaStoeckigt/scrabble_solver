class Scrabble

  def initialize(word = '')
    @word = word
    @score = 0
  end

  def score

    if @word == nil || @word == ''
      @score = 0
    else
      word_array = @word.downcase.chars
      word_array.each do |letter|

      if letter == 'a' || letter == 's' || letter == 't' || letter == 'r' || letter == 'i' || letter == 'o' || letter == 'e' || letter == 'l' || letter == 'n' || letter == 'u'
        @score += 1
      elsif letter == 'f' || letter == 'h' || letter == 'v' || letter == 'w' || letter == 'y'
        @score += 4
      elsif letter == 'b' || letter == 'c' || letter == 'm' || letter == 'p'
        @score += 3
      elsif letter == 'd' || letter == 'g'
        @score += 2
      elsif letter == 'j' || letter == 'x'
        @score += 8
      elsif letter == 'q' || letter == 'z'
        @score += 10
      elsif letter == 'k'
        @score += 5
      else
      end

    end
    @score
  end
end
end
