=begin
use of attr_reader and attr_writer inplace of getter and setter methods, having same effect
as accessing them as variables
=end

class Abc
	attr_reader:name
	attr_writer:name
	attr_reader(:age,:total)
	#brackets are always optional
	attr_writer :age,:total
	
=begin
	or use attr_accessor if you want to use reader and writer both for the same variable
=end
	
	def setName(aname)
		@name=aname
	end
	
	def getName
		return @name
	end
end

t=Abc.new
t.name="Abhi"
puts(t.name) #Abhi
t.age=10
puts(t.age)
t.setName("Nav") #commenting this line would print Nav, the following line
puts(t.getName) #Nav

		