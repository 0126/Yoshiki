key = 0
while true	

#一つ目の数値の入力
while true
	if key == 1
		break
	end
	puts "数値を入力してください"
	x = gets.chomp
	if x =~ /^[0-9]+$/
		break 
	end
end

#二つ目以降の数値入力
while true
	puts "数値を入力してください"
	y = gets.chomp
	if y =~ /^[0-9]+$/
		break
	end
end

puts "[0]:+\n[1]:-\n[2]:×\n[3]:÷"

while true
	puts "計算方法を選んでください"
	z = gets.chomp
	if z == "0"||z == "1"||z == "2"||z == "3" 
		break
	end

end

z = z.to_i
x = x.to_i 
y = y.to_i
if key == 1
	if z == 0 then
		result = result + y
		puts "答え:#{result}"
	elsif z == 1 
		result = result - y
		puts "答え:#{result}"
		puts ""
	elsif z == 2
		result = result * y
		puts "答え:#{result}"
		puts ""
	elsif z == 3
		if y == 0
			puts "解なし"
		else
			result = result / y
			puts "答え:#{result}"
		end
	end	


else
	if z == 0 then
		result = x + y
		puts "答え:#{result}"
	elsif z == 1 
		result = x - y
		puts "答え:#{result}"
		puts ""
	elsif z == 2
		result = x * y
		puts "答え:#{result}"
		puts ""
	elsif z == 3
		if y == 0
			puts "解なし"
		else
			result = x / y 
			puts "答え:#{result}"
		end
	end
end

#計算の続行
puts "[0]:数値をクリア\n[1]:計算を続行\n[2]:電卓を終了する"

z = gets.to_i
if z == 0
	result = 0
	key = 0
elsif z == 1
	key = 1
elsif z == 2
	break
end

end






