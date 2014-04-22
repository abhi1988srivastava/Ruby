=begin
overriding <=> using comparable module and using it for
Array
=end

class Abc <Array
	include Comparable
	
	def <=> (myArray)
		self.length<=>myArray.length
	end
end

arr1=Abc.new([1,4,5,6])
arr2=Abc.new([7,8,9,10])
puts(arr1<=>arr2) #returns 0 since bothe are of same length
		
		