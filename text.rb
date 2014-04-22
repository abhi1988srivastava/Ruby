taxrate=0.175
print ("Enter price :")
s=gets
subtot=s.to_f

if (subtot<0.0)
then
	subtot=0.0
end


tax=subtot*taxrate
puts "Tax on $#{subtot} is $#{tax}, so grand total is $#{subtot+tax}"