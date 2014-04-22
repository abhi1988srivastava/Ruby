=begin
constants variable using with first capital alpha
=end

class Abc
	Ab=10
	
	class Def
		puts("value of Ab is",Abc::Ab)
	end
end

t=Abc::Def.new
puts(t)
