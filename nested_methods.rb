# nested method and how to manage scope of outside


class A
	def greet
		puts("Hi")
		
		def sayHello
			puts("Hello")
		
		def sayBye
			puts("Bye")
		end
			def sayNewBye
				puts("New Bye")
			end
		end
	end
end

a=A.new
#nested methods are not visible outside while nesting method is. Once you run the nesting method, all the nested methods become visible.
#a.sayHello -->error
#a.sayBye

#following lines work
a.greet
a.sayHello
a.sayBye
a.sayNewBye

