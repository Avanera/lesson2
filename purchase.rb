purch = {}
loop do
  puts "Enter the name of the product: "
  name = gets.chomp
  break if name == "stop"
  puts "Enter the price: "
  price = gets.chomp.to_f
  puts "Enter the quantity: "
  quant = gets.chomp.to_f

  purch[name] = {price: price, quant: quant} 
  #т.к. лучше вложенный хеш разбить на 2 значения, с ключами :price и :quentity.
  #то есть не использовать вводимые юзером значения как ключи.
end

puts purch

total = 0
purch.each do |n, p, a|
  sum = purch[n][:price] * purch[n][:quant] # не получилось использовать переменные: name, p, a.
  total += sum # Вычислить итоговую сумму всех покупок
  puts "Sum for #{n} is #{sum}." 
end
puts "Total amount is #{total}." 

#дальше - фигня, которую я придумала вначале:
#вывести итоговую сумму за каждый товар
#arr = purch.to_a
#  => [ ["ggg", {10=>1}], ["fff", {20=>2}] ] 
#i = arr.size
#total = 0
#while i > 0
#  product = arr[-i][1].to_a # [[10, 2]]
#  sum = product[0][0] * product[0][1] # 10 * 2
#  total += sum # Вычислить итоговую сумму всех покупок

#  puts "Sum for #{arr[-i][0]} is #{sum}."
#  i = i - 1
#end

#вывести на экран итоговую сумму всех покупок в "корзине"
#puts "Total amount is #{total}." 
