=begin
use of object_id and object creation
=end

def sameObject(num)
	puts ("#{num.object_id}")
	num=num
	puts ("#{num.object_id}")
	return num
end
num=10
puts ("#{num.object_id}")
num=sameObject(num)
puts ("#{num.object_id}")

#all the object id will be same

def diffObject(num)
	puts ("#{num.object_id}")
	num=num+2
	puts ("#{num.object_id}")
	return num
end

puts ("===============================")
num=10
puts ("#{num.object_id}")
num=diffObject(num)
puts ("#{num.object_id}")

#different handling for string and floats in ruby
#different objects gets created

fnum=1.5
puts ("#{fnum.object_id}")
fnum=1.5
puts ("#{fnum.object_id}")
fnum=1.5
puts ("#{fnum.object_id}")
fnum=1.5
puts ("#{fnum.object_id}")

s="abhi"
puts ("#{s.object_id}")
s="abhi"
puts ("#{s.object_id}")
s="abhi"
puts ("#{s.object_id}")
#object id of s remains same.new object is not created.
s << "nav"
puts ("#{s.object_id}")
s+=" hello"
puts ("#{s.object_id}")

=begin
change effect on a variable in a method takes place only when method returns.
for string, use of use of << alters the input string while + does not.
Also, some of the methods have "!" at the end of method name, which alters the input/argument string.
So beware of the effect.

=end

def modString(str)
	str=str+" hello"
	return str + " world"
end

def modString2(str)
	str=str << " hello"
	return str << " world"
end

def modString!(str)
	str=str+" hello"
	return str + " world"
end


arg="abhi"
puts ("#{arg.object_id}")
s=modString(arg)
puts (s)
puts (arg)
puts ("#{arg.object_id}")

s=modString2(arg)
puts (s)
puts (arg)
puts ("#{arg.object_id}")

arg1="hello"
puts ("#{arg1.object_id}")
s=modString!(arg1)	
puts (s)
puts (arg1)
puts ("#{arg1.object_id}")

=begin

21
21
21
21
===============================
21
21
25
25
16961748
16961244
16960752
16960224
18907812
18907680
18907548
18907548
18907272
18907140
abhi hello world
abhi
18907140
abhi hello world
abhi hello world
18907140

=end