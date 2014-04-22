a="abhi"
=begin
Accessor method change so that instance variable can be stored and retrieved like variables
=end

#another way of multiline commenting but between the tags the string is considered as double quoted string so 
#everything as a variable is evaluated. One can use it to print the usage.
hdoc1 = <<MYEND 
Accessor method change so that 
instance variable can be stored 
and retrieved like variables : #{a}
MYEND

class Abc
	def name
		return @name
	end
	
	#def name = (aname) not correct, no spacing
	def name=(aname)
		@name=aname
	end
end

t=Abc.new
t.name="Abhi"
puts("===="+t.name)
puts(hdoc1)