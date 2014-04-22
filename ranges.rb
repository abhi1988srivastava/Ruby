#use ranges in Ruby

class Abc
		
	def initialize(item)
		@item=item
	end
	
	def ameth
		
		puts( @item.to_a )
		
	end
	

	def prints
		for i in @item
			print (i)
		end
	end

end

s2 = (1...10)
s1 = (1..10)
s3 = ('abc'..'def')
	

a=Abc.new(s1)
a.ameth
a.prints
