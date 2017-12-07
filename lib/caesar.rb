def caesar_encode(word,offset)
 alphabet = [*("a".."z")]
  word = word.split("")
  word.collect do |character|
    if character == character.upcase && alphabet.include?(character.downcase)
      index = (alphabet.index(character.downcase) + offset)%26
      character= alphabet[index].upcase
    elsif alphabet.include?(character)
      index = (alphabet.index(character) + offset)%26
      character = alphabet[index]
    else
      character
    end
  end.join
end
 
# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)


 def caesar_decode(word,offset)
  caesar_encode(word,offset*-1)
 end
#  puts "What would you like to decode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)
 