#client side

require 'socket'

client=TCPSocket.open('localhost',3000)
while line=client.gets	
	puts(line.chomp)
end