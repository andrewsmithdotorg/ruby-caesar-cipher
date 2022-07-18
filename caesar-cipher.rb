def caesar_cipher (message, shift)
    ordinals = message.chars.map {|x| x.ord}
    shifted_ordinals =  ordinals.map {|x| x + shift}
    coded_chars = shifted_ordinals.map {|x| x.chr}
    coded_str = coded_chars.join
end

puts (caesar_cipher "dog", 5)