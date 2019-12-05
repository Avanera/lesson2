purch = Hash.new
amount = 0
while true do
puts "Enter the name of the product: "
name = gets.chomp
break if name == "stop"
puts "Enter the price: "
price = gets.chomp.to_f
puts "Enter the quantity: "
quant = gets.chomp.to_f

purch[name] = {price => quant}

amount += (price * quant)
end
#вывести на экран хеш, ключами которого являются названия товаров
#а значением - вложенный хеш, содержащий цену и количество
puts purch


#вывести итоговую сумму за каждый товар
arr = purch.to_a
#  => [ ["ggg", {10=>1}], ["fff", {20=>2}] ] 
i = arr.size
total = 0
while i > 0
	product = arr[-i][1].to_a # [[10, 2]]
	sum = product[0][0] * product[0][1] # 10 * 2
	total += sum # Вычислить итоговую сумму всех покупок

	puts "Sum for #{arr[-i][0]} is #{sum}."
	i = i - 1


end

#вывести на экран итоговую сумму всех покупок в "корзине"

puts "Total amount is #{total}." 
