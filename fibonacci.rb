def fib(n)
	array = [0,1]
	while array.length < n
		array << array[-1] + array[-2] 
	end 
	return array
end


puts fib(10)



def fib_rec(n, array=[0,1])
	return array if n == 0 || n == 1
	return array if array.length == n
	fib_rec(n, (array << array[-1] + array[-2]))
end

puts fib_rec(10)