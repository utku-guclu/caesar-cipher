

 
def caesar_cipher(message, shift)
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    upcase_alphabet = []
    encrypted = []

    for l in alphabet do
        upcase_alphabet.push(l.upcase)    
    end
    
    for letter in message.split("") do
        if alphabet.include?(letter)
            encrypted.push(alphabet[(alphabet.index(letter) + shift) % alphabet.length])
        elsif upcase_alphabet.include?(letter)
            encrypted.push(alphabet[(upcase_alphabet.index(letter) + shift) % upcase_alphabet.length].upcase)
        else
            encrypted.push(letter)
        end
    end

    puts encrypted.join("")
end


# C = ( P + K ) % 26

 
caesar_cipher("What a string!", 5)
caesar_cipher("“Tada yori takai mono wa nai,”", 29)
# => "Bmfy f xywnsl!"
