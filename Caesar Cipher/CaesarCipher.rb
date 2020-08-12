#Ask user for string
print "Please type in the message you would like to encipher:"
#Create a variable to store the string
string = gets.chomp
#Create a variable for the number to shift the letters
print "Please type the number of letters you would like to shift."
shift_num = gets.chomp.to_i

def caesar_cipher(string, num = 1)
  #Create hash of upper and lowercase alphabet, rotate by num
  cipher = ([*('a'..'z')].zip([*('a'..'z')].rotate(num)) + [*('A'..'Z')].zip([*('A'..'Z')].rotate(num))).to_h
  #Map through string to find corresponding key to cipher
  code = string.chars.map {|c| cipher.fetch(c, c)}
  #Join string and print
  print code.join
end



#Call function
caesar_cipher(string, shift_num)

