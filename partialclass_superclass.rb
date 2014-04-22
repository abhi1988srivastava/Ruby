=begin
one can also add methods to the libraries like this..
we added b2meth() to A class

also the code demos certain features of OS :calc and dir and similarly others
=end
class A
	def ameth()
		print ("In A's ameth()\n")
	end
end

class B < A
	def bmeth()
		print ("In B's bmeth()\n")
	end
end

class A
	def b2meth()
		print ("In B's b2meth()\n")
	end
end

b=B.new
b.ameth
b.bmeth
b.b2meth

ans=`calc`
ans1=%x{dir}
print( "Goodbye #{ans}" )
print ("#{ans1}")

=begin
Output:
In A's ameth()
In B's bmeth()
In B's b2meth()
=end