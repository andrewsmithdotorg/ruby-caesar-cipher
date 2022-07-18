def caesar_cipher (message, shift)
    ordinals = message.chars.map {|x| x.ord}
    shifted_ordinals =  ordinals.map do |x|
        if (64 < x && x < 91) || (96 < x && x < 123)
            x + shift
        else
            x = x
        end
    end
    shifted_ordinals.map! do |x|
        if x > 122
            x -= 26
        elsif (90 < x && x < 97)
            x -= 26
        else
            x = x
        end
    end
    coded_chars = shifted_ordinals.map {|x| x.chr}
    coded_str = coded_chars.join
end