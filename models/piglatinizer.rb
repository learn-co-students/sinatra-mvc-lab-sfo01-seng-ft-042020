class PigLatinizer 
    
    def piglatinize(str)
        words = str.split(' ')
        full_sentence = words.map do |word|
            piglatinizeword(word)
        end 
        full_sentence.join(' ')
    end 

    def piglatinizeword(word)
        prefix = word[0, %w(a e i o u A E I O U).map{|vowel| "#{word}aeiouAEIOU".index(vowel)}.min]
        #return prefix
        if prefix == ''
          "#{word[prefix.length..-1]}#{prefix}way"
        else 
          "#{word[prefix.length..-1]}#{prefix}ay"
        end 
    end 
end 