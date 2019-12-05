my_array = [0, 1]

i = 1
while i <= 100
  my_array << i
  i += my_array[-2]
end

print my_array
