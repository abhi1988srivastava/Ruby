#server side

require 'socket'
server=TCPServer.open(3000)
loop {
	Thread.start(server.accept) do |client|
		client.puts("Accepted Client")
		#client.close()
	end
}