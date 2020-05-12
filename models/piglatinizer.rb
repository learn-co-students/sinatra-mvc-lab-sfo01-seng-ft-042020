class PigLatinizer
    attr_accessor :result

    def piglatinize(text)
        return text.split.map {|word| convert(word)}.join(" ")     
    end

    def convert(word)
        return "#{word}way" if %w(a e i o u A E I O U).include? word[0]
        first = word.index(/a|e|i|o|u/)
        return "#{word[first..-1] + word[0...first] + 'ay'}"

    end


end