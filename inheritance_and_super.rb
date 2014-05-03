=begin
using super keyword and demonstrating inheritance mechanism.
Private, Public and Protected members
=end

class A
	def hello
		print ("Hello A\n")
	end
	
	def AHello
		print("Again Hello A\n")
	end
	
	private
		def privateA
			puts("I am private A")
		end
	
	protected
		def protectedA
			puts("I am protected A")
		end
	
	public 
		def publicA
			puts("I am public A")
		end
		
end

class B < A
	def hello
		super
		print ("Hello B\n")
	end
	
	def BHello
		print ("Again Hello B\n")
	end
	
	private
		def privateB
			puts("I am private B")
		end
	
	protected
		def protectedB
			puts("I am protected B")
		end
	
	public 
		def publicB
			puts("I am public B")
		end
	
	def accessObject(myObj)
		#myObj.privateB  --> it wont be visible in any case outside the class.
		myObj.protectedB  #--> only visible when passed/accessed for the object of same type.
		myObj.publicB
	end
end

def to_s
	return "I am from #{self.class} class"
end

a= A.new
a.hello
a.AHello
b=B.new
b.hello
b.AHello
b.BHello
#b.privateB  # -->it wont be accessible from B since Private 
#b.protectedB  #--> it wont be accessible since outside the class
b.publicB
b1=B.new

b.accessObject(b1)

#accessing private method which I have not seen in java. Ruby does it with send function
b.send(:privateB) #prints : I am private B
 

=begin
output:

Hello A
Again Hello A
Hello A
Hello B
Again Hello A
Again Hello B
I am public B
I am protected B
I am public B

=end
