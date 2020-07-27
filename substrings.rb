my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(str, dict)
  hash_count = {}
  dict.each do |word|
    count = check_substring(str.downcase, word)
    hash_count[word] = count if count > 0
  end
  return hash_count
end

def check_substring(str1, str2)
  match_count = 0
  for i in (0..str1.length - str2.length)
    for j in (0..str2.length - 1)
      break if str1[i + j] != str2[j]
      match_count += 1 if j == str2.length - 1
    end
  end
  return match_count
end

puts substring("Howdy partner, sit down! How's it going?", my_dictionary)
