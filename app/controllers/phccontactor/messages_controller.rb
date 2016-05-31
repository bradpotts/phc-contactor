require_dependency "phccontactor/application_controller"

module Phccontactor
	class MessagesController < ApplicationController

		# Prevent Problems on our Apps
		before_action :require_user, except: [:new, :create]

		# New Message Form
		def new
			@message = Message.new
		end

		# Create Message from Info Entered
		def create
			@message = Message.new(message_params)

			if @message.valid?
				MessageMailer.message_me(@message).deliver_now
				redirect_to new_message_path, notice: "Thankyou for your message."
			else
				render :new
			end
		end

		private

		def message_params
			params.require(:message).permit(:name, :email, :subject, :content)
		end

	end
end
