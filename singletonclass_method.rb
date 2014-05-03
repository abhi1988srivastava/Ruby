=begin
singleton class and adding method to the class using <<
=end

obj=Object.new

class << obj
	#adding methA to the instance obj not to the class but only to one instance obj
	def methA
		print ("I am in singleton class")
	end
end

# obj.methA ---> to call the method

class A
	def hello
		print ("Hello A\n")
	end
	
	class << self # self means A
		def bye # this method is added to the class of A not the instance so gets called using a.class.bye or A.bye
			puts("Bye")
		end
	end
	
	def self.newBye # this is same in effect as above class  << self.
		print ("new bye\n")
	end
end

a=A.new
a.hello
#a.bye --> this wont work
a.class.bye #this will
A.bye
#a.newBye  --> this wont work.
A.newBye #this works
