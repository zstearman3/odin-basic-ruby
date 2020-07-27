def shift_letter(value, shift, min, max)
  value += shift
  value = (value - max + min - 1) if value > max
  return value
end

def caesar_cipher(str, shift)
  encrypted_string = ""
  numeric_arr = []
  str.each_char do |char|
    ord_letter = char.ord
    if ord_letter >= 65 && ord_letter <= 90
      ord_letter = shift_letter(ord_letter, shift, 65, 90)
    elsif ord_letter >= 97 && ord_letter < 122
      ord_letter = shift_letter(ord_letter, shift, 97, 122)
    end
    numeric_arr.push(ord_letter)
  end
  for digit in numeric_arr
    encrypted_string += digit.chr
  end
  encrypted_string
end

puts("What would you like to encrypt?")
user_string = gets
puts caesar_cipher(user_string, 5)
