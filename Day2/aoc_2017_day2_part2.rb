line_num=0
text=File.open('input').read
text.gsub!(/\r\n?/, "\n")
sum = 0
text.each_line do |line|
  result = 0 
  line.split(" ").combination(2).each do |pair|
    if (pair[0].to_i % pair[1].to_i) == 0
      puts pair
      result = pair[0].to_i / pair[1].to_i
      break
    end
    if (pair[1].to_i % pair[0].to_i) == 0
      puts pair
      result = pair[1].to_i / pair[0].to_i
      break
	  end
  end
  sum = sum + result
  puts "#{line_num += 1} #{result}"
end
puts "sum = #{sum}"
