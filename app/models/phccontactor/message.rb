module Phccontactor
	class Message

		# Add Includes
		include ActiveModel::Model

		# Message Field Reader & Writter
		attr_accessor :message_name, :message_email, :message_subject, :message_content

		# Form Fields Validation
		validates :message_name,
			presence: true

		validates :message_email,
			presence: true

		validates :message_subject,
			presence: true

		validates :message_content,
			presence: true

	end
end
