=begin
taken from
# The Book of Ruby - http://www.sapphiresteel.com
=end

s = "hello world"
print( "s='#{s}' and s.object_id=#{s.object_id}\n" )
s = s + "!"			# a new string is created so the two s variables here refer to different objects
print( "s='#{s}' and s.object_id=#{s.object_id}\n" )
s = s.capitalize	# this creates a new string object
print( "s='#{s}' and s.object_id=#{s.object_id}\n" )
s.capitalize!		# but this modifies the original string object
print( "s='#{s}' and s.object_id=#{s.object_id}\n" )
s[1] = 'A'			# this also modifies the original string object
print( "s='#{s}' and s.object_id=#{s.object_id}\n" )
print( "The first char of s, s[0,1], is '#{s[0,1].to_s}' and the last char [s-1,1] is #{s[-1,1].to_s}" )
#without to_s, it will print ASCII value of the alphabet in s
s1="Abhinav"
puts("\n",s1.length)
puts(s1[1..4])

=begin
s='hello world' and s.object_id=17353716
s='hello world!' and s.object_id=19097592
s='Hello world!' and s.object_id=19097484
s='Hello world!' and s.object_id=19097484
s='HAllo world!' and s.object_id=19097484
The first char of s, s[0,1], is 'H' and the last char [s-1,1] is !

Same id means works on the same object and no new object is created and similarly one can check 
the object_id of any object
=end