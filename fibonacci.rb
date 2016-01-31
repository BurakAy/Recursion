# Takes a number and returns that many members of the fibonacci sequence.

def fibs(n)
	x = 0
	y = 1
	z = 1
	array = []

	return puts 0 if n == 0

	array << 0
	n.times do
	  array << z
	  z = x + y
	  x = y
	  y = z
	end

	return puts array.join(", ")
end


def fibs_rec(n)
	return 0 if n == 0
	return 1 if n == 1
	fibs_rec(n-1) + (n-2)
end

def fib_recursion(n, array = [0,1])
  return array[0] if n == 0
  return array if n == 1 || array.length > n
  fib_recursion(n, (array << (array[-1] + array[-2])))
end

fibs(10)

puts fib_recursion(10).join(", ")

