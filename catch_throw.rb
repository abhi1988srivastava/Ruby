=begin
catch and throw condition usage
=end

def do_some(anum)
	i=0
	while true
		puts("I am here")
		i+=1
		throw (:goto_this_func) if (i==anum)
	end
end

catch(:goto_this_func){
	do_some(5)

}
