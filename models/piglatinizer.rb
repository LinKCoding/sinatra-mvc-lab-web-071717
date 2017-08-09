class PigLatinizer


  def piglatinize(word)
    first = word[0].downcase
    first_two = word[0..1].downcase
    first_three = word[0..2].downcase
    if first == "a" || first == "e" || first == "i" ||first == "o" || first == "u"
      "#{word}way"
    elsif first_two == "th" || first_two == "pl" || first_two == "pr" || first_two == "wh" || first_two == "sk"
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif first_three == "spr" || first_three == "str"
      "#{word[3..-1]}#{word[0..2]}ay"
    else
      "#{word[1..-1]}#{word[0]}ay"
    end
  end

  def to_pig_latin(sentence)
    s = sentence.split
    s.map do |word|
      self.piglatinize(word)
    end.join(" ")
  end
end

#Pry.start
