module Phccontactor
	class Engine < ::Rails::Engine
		# PHCEngines
		require 'phcnotifi'
		require 'phctitler'

		# UI Dependencies
		require 'jquery-rails'
		require 'sass-rails'
		require 'bootstrap-sass'
		require 'font-awesome-rails'

		# Isolate Namespace for PHC Members
		isolate_namespace Phccontactor

		# Auto Mount Plugin
		initializer "phccontactor", before: :load_config_initializers do |app|
			Rails.application.routes.append do
				mount PHCContactor::Engine, at: "/"
			end
		end

		# Testing Generator
		config.generators do |g|
			g.test_framework :rspec,
			fixtures: true,
			view_specs: false,
			helper_specs: false,
			routing_specs: false,
			controller_specs: true,
			request_specs: false
			g.fixture_replacement :factory_girl, dir: "spec/factories"
		end
		
		# Load Helper Files
		config.to_prepare do
			ApplicationController.helper(ApplicationHelper)
			Phcnotifi::ApplicationController.helper(ApplicationHelper)
			Phctitler::ApplicationController.helper(ApplicationHelper)
		end

	end
end
