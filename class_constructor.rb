=begin
this is a multiline commenting else use #
=end
class Deff
	def initialize(aname,aage=12)
		@name=aname
		@age=aage
	end
	def getName
		return @name
	end
	def getAge
		return @age
	end
end

class Abc < Deff
	def initialize(name,age)
		@name=name
		super(name)
		#super() passes no argument to the superclass
		#super passes all the arguments to the superclass		
		
	end
	
	#this will get called else the superclass method is called
	def getName
		print ("The name is "+@name)
	end
end

m=Abc.new('abhi',12)
k=Deff.new('hello','world')
puts (m.getName)
puts (m.getAge)
puts (k.getName)
puts (k.getAge)
puts(m.inspect)