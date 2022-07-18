def caesar_cipher (message, shift)
    coded_message = []
    alpha = "abcdefghijklmnopqrstuvwxyz"
    lower_key = alpha.split("")
    lower_key.rotate!(shift)
    upper_key = lower_key.map(&:upcase)
    for i in 0..message.length
        j = alpha.split("").index(message[i].to_s.downcase)
        if lower_key.include?(message[i])
            coded_message.push(lower_key[j])
        elsif upper_key.include?(message[i])
            coded_message.push(upper_key[j])
        else 
            coded_message.push(message[i])
        end
    end
    coded_message.join
end

puts caesar_cipher("Dogs are so COOL dude!!", 20)