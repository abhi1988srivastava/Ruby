=begin
overriding and class inheritance
=end

class A
	def prints
		puts("I am prints of class A")
	end
	
	def manip(a,b)
		puts("I perform addition" +(a+b).to_s)
	end
end

class B < A
	def prints
		puts("I am prints of class B")
	end
	
	def manip(a,b)
		puts("I do concatenation of strings"+a+" "+b)
	end
end

a1=A.new
a1.prints
b1=B.new
b1.prints
a1=b1
a1.prints
b1=a1
b1.prints
a1.prints

=begin
output

I am prints of class A
I am prints of class B
I am prints of class B
I am prints of class B
I am prints of class B
=end