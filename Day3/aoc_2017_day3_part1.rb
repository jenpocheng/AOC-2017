input = 312051 # 1024
i = 3
while input > (i**2)
  print "i = "
  puts i
  i = i + 2
end
puts i # 33
input = input - (i - 2)**2 # 63
puts input
i = (i - 1) # 32
puts i
input = input % i # 31
i = i / 2 # 15
result = i + (input - i).abs
puts result