#string concatenation techniques
#string formatting is done through printf and in like any other language like %d for decimal, %f for float etc.


str1="Hello"<<"World" #integers can be concatenated without having to convert them into strings
str2="Hello"+"World" # integers need to be converted to strings, using to_s method
str3="Hello" "World" #same as above
str4="Hello","World" #no need of conversion since array of elements

#puts(str1+"-----"+str2+"-----"+str3+"-----"+str4) 
#stringmanip_concat.rb:8:in `+': can't convert Array into String (TypeError)
#        from stringmanip_concat.rb:8:in `<main>'
=begin
Since , creates an array of objects and every element in comma separated is treated as separate element.
=end
puts(str4) 
#Hello
#World

=begin
The chop method returns a string with the last character removed or with the carriage return and newline characters removed (‚\r\n‛) if these are found at the end of the string.Removes last character no matter what, so use it when you have to remove the record separator from the records else use chomp 
The chomp method returns a string with the terminating carriage return or newline character removed (or both the carriage return and the newline character if both are found).
=end

s1="Abhinav		"
puts(s1.chomp)
puts(s1.chop)
s1="Abhinav"
puts(s1.chop)

#you can also define record separator in Ruby using $/, chomp also lets you do it like:
#$/ works with gets and chomp
s1="Hello World"

puts(s1.chomp('rld'))


