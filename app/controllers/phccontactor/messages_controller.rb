require_dependency "phccontactor/application_controller"

module Phccontactor
	class MessagesController < ApplicationController

		# New Message Form
		def new
			@message = Message.new
		end

		# Create Message from Info Entered
		def create
			@message = Message.new(message_params)
			if @message.valid?
				MessageMailer.message_me(@message).deliver_now
				redirect_to contact_us_path, :flash => { :success => "Thank You. Your Message has been Sent!" }
			else
				render :new
			end
		end

		private

		def message_params
			params.require(:message).permit(:message_name, :message_email, :message_subject, :message_content)
		end

	end
end
