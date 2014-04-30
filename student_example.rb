=begin
student class to store name, marks, roll number and get the
details based on roll number of student passed by the user.
=end

class Student
	def initialize(name,marks,roll)
		@name=name
		@marks=marks
		@roll=roll
	end
	def totalMarks
		total=0
		mar=@marks
		for (a,b,c) in @marks
			total+=a.to_i+b.to_i+c.to_i
		end
		return total
	end
	
	def getName()
		return @name
	end
	def getRoll()
		return @roll
	end
	def getMarks()
		return @marks
	end
	def averageMarks(tot)
		num=@marks.length
		return tot/num
	end
	
	
	
	def display
		puts("Name : "+@name)
		print("Marks : ",@marks,"\n")
		puts("Roll Number : "+@roll.to_s)
	end
	
	def Student.searchRec(s_arr,roll)
		for i in s_arr
			if roll== i.getRoll
				return i
			else
				next
			end
		end
	end
	
end	

student_arr=[]

s1=Student.new('abhi',[1,2,3],1)
student_arr << s1
total1=s1.totalMarks
av1=s1.averageMarks(total1)

s2=Student.new('adi',[5,7,9],2)
student_arr << s2
total2=s2.totalMarks
a2=s2.averageMarks(total2)

s3=Student.new('mali',[10,11,12],3)
student_arr << s3
total3=s3.totalMarks
av3=s3.averageMarks(total3) 

s=Student.searchRec(student_arr,3)
s.display

puts(s.class) #Student

		