
alph = ("a".."z").to_a
vowels = ["a","e","i","o","u","y"]

hash = {}
alph.each.with_index(1) do |letter, index|
#text = "#{letter} - #{index},"
hash[letter] = index if vowels.include? (letter)
end

puts hash
