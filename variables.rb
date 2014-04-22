localvar="hello"
$globalvar="goodbye"

def ameth
	localvar=10
	puts(localvar)
	puts($globalvar)
end

def anothermeth
	localvar=500
	$globalvar="bonjour"
	puts(localvar)
	puts($globalvar)
end

ameth
anothermeth
puts(localvar)

