class PigLatinizer
  attr_reader :pig_latin
  

  def piglatinize(input)
    words = input.split(" ")
    pig_latin = []
    words.map do |word|
      if word[0].scan(/[aeiouAEIOU]/).empty?
        pig_latin << word.chars.rotate.join + "ay"
      else 
        pig_latin << word + "way"
      end
    end
    pig_latin.join(" ")
  end
        
  end

