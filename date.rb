puts "Enter a date in dd.mm.yyyy format"
date = gets.chomp
arr = date.split(".")

d = arr[0].to_i
m = arr[1].to_i
y = arr[2].to_i

months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] #первый месяц = 0 дней.
months[2] = 29  if (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0)
index = months.take(m).sum + d
puts "Date Serial Number starting from the beginning of the year is #{index}."


#дальше - для хэша
#months = { 1 => 31,  2 => 28,  3 => 31,  4 => 30,  5 => 31,  6 => 30,  7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
#months[2] = 29  if (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0)

#определить порядковый номер дня:
#январь + февраль и т.д пока месяц не будет == m.
#потом прибавить d. 
##index = d if m == 1
##index = months[1] + day if m == 2
##index = months[1] + months[2] + day if m == 3
#i = m - 1  
#index = months[i] 
#while i > 1 
#index += months[i - 1] 
#i = i - 1
#end
#index += d
#puts "Date Serial Number starting from the beginning of the year is #{index}." 
