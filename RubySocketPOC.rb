require 'socket'        # Sockets are in standard library

hostname = 'localhost'
port = 2000

client = TCPSocket.new(hostname, port)   # Client, connects to server on port 9911
rhost  = client.peeraddr.last               
# Get the remote server's IP address 
client.gets.chomp
client.puts "Hi, TCP Server #{rhost}"
client.close
