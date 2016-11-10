$ip_address = "192.168.1.100"

server = "192.168.1.200"

def connect
	$ip_address
	# sever cannot be displayed because it is a local variable
end

class Server
	
	def show_details
		$ip_address
	end
end

c1 = Server.new
puts c1.show_details