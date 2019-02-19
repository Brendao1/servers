
require 'socket'

server = TCPServer.new(2345)

loop do
  socket = server.accept
  while true do
  socket.puts "What do you say?"
      they_said = socket.gets.chomp
      break if they_said == "quit"
    end
    socket.puts "You said: #{they_said}. Goodbye!"
    socket.close
  end
