=begin
Create a method that takes an array as a parameter. 
Within that method, try calling methods that do not mutate the caller.
How does that affect the array outside of the method? 
What about when you call a method that mutates the caller within the method?
=end

#WILL NOT MUTATE THE CALLER 
some_method(arr)
	arr.map do |x|
       x+=2
	end
end
array_to_mutate=[1,2,3,4]
some_method(array_to_mutate)

#WILL MUTATE THE CALLER
some_method1(arr)
	arr.map! do |x|
		x*=9
	end
end
some_method1(array_to_mutate)