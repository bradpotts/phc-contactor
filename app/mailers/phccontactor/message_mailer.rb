module Phccontactor
	class MessageMailer < ApplicationMailer

		# Message Address
		default :to => "info@phcnetworks.net"

		# Put Togther Messange
		def message_me(msg)
			@msg = msg
			mail from: @msg.email, subject: @msg.subject, body: @msg.content    
		end

	end
end
