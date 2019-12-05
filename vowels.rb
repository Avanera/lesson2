

vowels = [a,e,i,o,u,y]

hash = Hash.new

i = 0
vowels.each do |v| hash[v] = (i++)
	i += 1
end


puts hash
