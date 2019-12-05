
alph = ("a".."z").to_a
vowels = ["a","e","i","o","u","y"]

hash = {}
alph.each.with_index do |letter, index|
#text = "#{letter} - #{index},"
hash[letter] = index
end

hash2 = {}

vowels.each do |v| 
  if hash.include? v
  #puts "#{v} - #{hash[v]}"
  hash2[v] = hash[v]
  end
end

puts hash2
