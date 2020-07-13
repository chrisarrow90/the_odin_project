def caesar_cipher (string, key)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alpha_upper = alphabet.upcase
  ciphered = ""

  string.each_char do |c|
    if alphabet.include?(c)
      new_idx = (alphabet.index(c) + key) % 26
      ciphered << alphabet[new_idx]
    elsif alpha_upper.include?(c)
      new_idx = (alpha_upper.index(c) + key) % 26
      ciphered << alpha_upper[new_idx]
    else
      ciphered << c
    end
  end
  ciphered
end

puts "What is your text: "
string = gets.chomp
puts "What is the key: "
key = gets.chomp.to_i

puts caesar_cipher(string, key)
