=begin
Arrays and Maps in Ruby
In Ruby, arrays can store any type of elements.
=end

=begin
All about 1D arrays
=end
def elements
	s=[]
	#or s=Array.new
	#s=Array.new(2) will create array of two nil elements
	#s=Array.new(2,"Abhi") will create array of 2 "Abhi" elements
	for i in (1..10)
		s<<i
	end
	return s
end	
arr=[1,elements,'abhi']
puts(arr)

def printString
	y=["I","am","Abhinav"]
	for i in y
		print (i+"---")
	end
end

def printString2
	y=%w(I am the same Abhinav)
	for i in y
		print (i+"---")
	end
end

printString
puts
printString2

=begin
Multi D arrays
=end

a=Array.new(2)
a[0]=Array.new(2,"Abhi")
a[1]=Array.new(2,"nav")
puts
puts(a)

#or

a=[
	["Abhi","Abhi"],
	["nav","nav"]]

puts(a)


#All the concepts of iterating over array of arrays remain same for all

#copy array
s1=[1,2,3,4]
s2=s1
puts(s2)
puts("changes in s1, changes s2 also")
s1 << 5
puts(s2)
s3=s1.clone
puts(s3)
s1<<6
puts("s3 remains unchanged irrespective of change in s1")
puts(s3)

=begin
array comparison is also pretty easy in ruby like
a1<=>a2 : if each value of a1 is > a2 then return 1 else -1 and if
		  both equal then zero is returned
this even applies when the arrays are of varied lengths
=end

puts("comparison result")
puts(s1<=>s3)

s4=[1,2,'abc','h',4] #can sort only same types..string cant be comapred with fixnum in ruby
s4=[5,3,9,1,10]
puts("sorting result")
puts(s4.sort)

=begin
Now learning Hash. Hash is like Dictionary in Python, HashMap in Java.
Its like array but in array indexes are always an integer but in Hash, it can be any index value.
It keeps only unique keys.
=end

h1=Hash.new #empty hash
puts("=====Hash=====")
h1["A"]="Abhinav"
h1["B"]="Bachelor"
h1["C"]="Computers"

puts(h1["A"]+"\n")

#or

h2={ "A"=>"Abhinav",
	 "B"=>"Bachelor",
	 "C"=>"Computers" }
puts(h2)





