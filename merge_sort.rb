def merge_sort(array)
	if array.length <= 1
		array
	else
		mid = (array.length / 2).floor # split array into two
		left = merge_sort(array[0..mid - 1]) # left of array is up to midpoint - 1
		right = merge_sort(array[mid..array.length]) # right of array is midpoint to end
		merge(left, right) # call merge, pass left and right
	end
end

def merge(left, right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first] + merge(left[1..left.length], right)
	else
		[right.first] + merge(left, right[1..right.length])
	end
end

ary = [4, 10, 20, 8, 14, 89]
puts merge_sort(ary).join(", ")