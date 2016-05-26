module Phccontactor
	class ApplicationController < ActionController::Base

		# Add Helpers
		helper Phctitler::Engine.helpers
		helper Phctitleseo::Engine.helpers

	end
end
