=begin
static variable using @@
=end

class Abc
	@@count=0
	def initialize()
		@@count+=1
	end
	def value
		return @@count
	end
end

t=Abc.new
t1=Abc.new
puts("====",t1.value)
t2=Abc.new
t3=Abc.new
t4=Abc.new
puts("====",t4.value)
