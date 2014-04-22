class Abc
	def setName(aname)
		@myname=aname
	end
	def getName()
		return @myname
	end
end

a=Abc.new
b=Abc.new
a.setName("abhi")
puts (@myname)
puts (a.getName)
puts (self)
puts (self.class)
		