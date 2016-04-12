module Phccontactor
	class MessageMailer < ApplicationMailer

		# Message Address
		default :to => ENV["PHC_MTDEVISE_SENDER"]

		# Put Togther Messange
		def message_me(msg)
			@msg = msg
			mail from: @msg.email, subject: @msg.subject, body: @msg.content    
		end

	end
end
