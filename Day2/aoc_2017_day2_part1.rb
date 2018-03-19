line_num=0
text=File.open('input').read
text.gsub!(/\r\n?/, "\n")
sum = 0
text.each_line do |line|
  min = 10000
  max = 0
  line.split(" ").each do |n|
    max = n.to_i if n.to_i > max
    min = n.to_i if n.to_i < min
  end
  sum = sum + max - min
  print "#{line_num += 1} #{max - min}"
end
puts "sum = #{sum}"
