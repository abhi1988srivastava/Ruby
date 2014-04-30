=begin
equal? is reference equality
== is value equality
eql? is value and type equality
=end

s1="abhinav"
s2=s1
s3="abhinav"

puts ("s1.equal? s2 : #{s1.equal? s2}")
puts ("s1==s2 : #{s1==s2}")
#puts ("s1.eq1? s2 : #{s1.eq1? s2}") not for string
puts ("s1.equal? s3 : #{s1.equal? s3}")
puts ("s1==s3 : #{s1==s3}")
puts ("s2.equal? s3 : #{s2.equal? s3}")
puts ("s2==s3 : #{s2==s3}")

puts("#{'a'===s1}")
puts("#{'a'.include?(s1)}")
puts((1..9)===5) #or (1..9).include?(3)



=begin
output
s1.equal? s2 : true
s1==s2 : true
s1.equal? s3 : false
s1==s3 : true
s2.equal? s3 : false
s2==s3 : true
=end

