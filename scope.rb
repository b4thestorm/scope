=begin
create a local variable scope and test out different scenarios.
1. Create a local variable and modify it at an inner scope(in between a
	do/end block). You can try

	a. re-assigning the variable to something else
	b.call a method that doesnt mutate the caller
	c.call a method that mmutates the caller,

2. Create a local variable at an inner scope (within a do/end block)
	dn try to reference it in the outerscope.What happens when you have
	nested do/end blocks?
=end

num1=[1,2,3]
num1.map do |x| 
	num1 =['change','me','please']
end
num1=[1,2,2,3,3,4]
num1.map do |x|
	num1.uniq
end
num1.map do |x|
	num1.uniq!
end

['1','2'].each do |x|
x= "hello moto"
end

puts x
=begin
Referencing the variable in the outerscope will ot work. Simply
because innerscope variables are only accessable within the innerscope.


#the scope within the variable count, is contained
#within the do/ end block
#local variables declared in an outerscope is available in an
#innerscope(do/end block)!!!
#local variables declared in an innerscope is not available in an 
#outserscope.
num2= 8
arr= [1,2,3]
arr.each do |x|
  num2= x
  count= x

end

puts "num2 is #{num2}"
puts count

pass by value 
pass by reference

=begin
def some_method(str)
 str.changeit
 return new_str
end
outer_str= 'hi'
some_method(outer_str)
=end
#pass by value = means that you can't actually change a variable inside a method.
#if you want to change the variable, you have to actually redefine it.
#im only passing in the value. its only a copy. you can't change it.
=begin
def some_method(str)
outer_str = 'hi'
end

outer_str = 'hi'
some_method(outer_str)
#pass by reference= when i make a change to a variable in a method, im actually
making a change to a variable, because it is just a reference. 
=end
=begin
ruby is both pass by reference and pass by value.!!
in order for the method, to change the variable, 
you have to mutate the caller. thats the only way!! 
=end
