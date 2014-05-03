=begin
Exception handling: similar to try-catch-finally of java..
try => begin
catch => rescue
finally => ensure
=end

begin
	res=1/0
rescue Exception => e
	x=0
	puts(e.class) #prints out class : ZeroDivisionError, can also be achieved as puts($!.class) ; catches last exception
	puts(e)		# description : divided by 0
end


puts("================================================")
def execCalc(num1,num2)
	begin
		res=num1/num2
	rescue Exception=>e
		res=0
		puts(e.class) 
		puts(e)
	end
	return res
	
end

execCalc(10,0)
	
puts("================================================")

=begin
multiple exceptions can be caught like"
rescue TypeError, NoMethodError => e
or 
rescue TypeError=> e
#do something
rescue NoMethodError => e
#do other thing

Always put the specific exception above the generalised one.
Once the exception has been caught, the process down go further down the next exception.

Sometimes, you want to execute some code ONLY when there is no exception, ruby comes to rescue with else clause.
=end

def execCalc(num1,num2)
	begin
		res=num1/num2
	rescue Exception=>e
		res=0
		puts(e.class) 
		puts(e)
	else
		puts("I am only when no exception")
	ensure
		puts("I will run no matter what")
	end
	
	
end

execCalc(1,0)

puts("================================================")

def execCalc(num1,num2)
	begin
		res=num1/num2
	rescue Exception=>e
		res=0
		puts(e.class) 
		puts(e)
	else
		puts("I am only when no exception")
	ensure
		puts("I will run no matter what")
	end
	
	
end

execCalc(1,1)

puts("================================================")

#to see complete list of errors and errorcodes ruby provides

puts(Errno.constants)
#puts(Errno.constants::Errno)  --> to see all the numeric value associated with Err constants

