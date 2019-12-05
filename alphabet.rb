

alph = ("a".."z").to_a

hash = Hash.new

i = 0
alph.each do |letter| hash[letter] = (i++)
	i += 1
end


puts hash
