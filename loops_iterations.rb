=begin
dealing with loops and iterations
=end

for s in 1..3
	print(s)
	
end
print("\n")
#or
puts("==================")

for s in [1,2,3] #you can put "do" here but it works fine without it too. Generally required when you are putting everything in one line
	print(s)
	
end
print("\n")
puts("==================")

#or

[1,2,3].each do |i|
	print(i)
	
end
print("\n")

puts("==================")

#Array of Arrays

arr=[ 
		[1,2,3,4],
		['a','b','c','d']]

arr.each do |a,b,c,d|
	puts(a.to_s+"-"+b.to_s+"-"+c.to_s+"-"+d.to_s)
end

#or

for (a,b,c,d) in arr
	puts(a.to_s+"-"+b.to_s+"-"+c.to_s+"-"+d.to_s)
end

#or
[[1,2,3,4],['a','b','c','d']].each do |a,b,c,d|
	puts("#{a},#{b},#{c},#{d}")
end

#or

[[1,2,3,4],['a','b','c','d']].each{
	|a,b,c,d|
	puts("#{a},#{b},#{c},#{d}")
}

x=0
while x<5 do print(x); x+=1 end

#or
puts
y=0
while y<5
	print(y)
	y+=1
end

#or while modifier single line
#z="a"
#print(z);z.succ while z<"f"
puts
#or multiline while modifier.it is similar to do while in java
m=1
begin
	print(m.to_s+" ")
	m=m*2
end while m<20

#using until which can be considered as reverse the condition of while and imagine as while..so until <condition> = while not <condition>
puts
k=1
until k>10
	print(k.to_s+"->")
	k+=1
end

#or loop block, which is a no test iterator means there is no condition to check like in until,while etc. so it loops forever until you provide
#an if condition to break from the loop
puts
l=1
loop{ #do will also work
	print (l.to_s+" ")
	l+=1
	if(l==10)
		break
	end
}

# if else elsif are all same like in any other programming language.
#unless is => if not
p=1
unless p<2
	puts("\n NO")
else
	puts("\n YES")
end