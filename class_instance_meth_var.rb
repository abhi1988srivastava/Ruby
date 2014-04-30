=begin
class and instance variables and methods
=end

class Abc
	@@class_count=0
	@inst_name="Abhinav"
	def initialize(val)
		@inst_count=0
		@@class_count+=1
		@inst_count+=1
	end
	#instance method
	def value
		return @@class_count,@inst_count
	end
	#class method
	def Abc.classVal
		return @@class_count
	end
end

t=Abc.new(1)
t1=Abc.new(1)
puts("====",t1.value)
t2=Abc.new(1)
t3=Abc.new(1)
t4=Abc.new(1)
puts("====",t4.value)
puts(Abc.instance_variable_get(:@inst_name))
puts(Abc.classVal)
#====
#2
#1
#4
#====
#5
#1
#Abhinav
	