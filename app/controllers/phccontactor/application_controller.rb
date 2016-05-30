module Phccontactor
	class ApplicationController < ActionController::Base

		# Filter and Security
		before_filter :require_user
		protect_from_forgery with: :exception

		# AuthRocket User Helpers
		def require_user
			unless current_user
				session[:last_url] = request.get? ? url_for(params) : url_for
				redirect_to new_login_url
			end
		end
	
		def current_user
			@_current_user ||= AuthRocket::Session.from_token(session[:ar_token]).try(:user)
		end
		helper_method :current_user
	
		def new_login_url
		ENV['AUTHROCKET_LOGIN_URL']
			# $ar_login_url
		end
		helper_method :new_login_url

		# Add Helpers
		helper Phcnotifi::Engine.helpers
		helper Phctitleseo::Engine.helpers

	end
end
