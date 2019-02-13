$:.push File.expand_path("lib", __dir__)
require "phccontactor/version"

Gem::Specification.new do |phc_gem_spec|

  phc_gem_spec.name        = "phccontactor"
  phc_gem_spec.version     = Phccontactor::VERSION
  phc_gem_spec.authors     = ["BradPotts"]
  phc_gem_spec.email       = ["info@phcdevworks.com"]
  phc_gem_spec.homepage    = "https://phcdevworks.com"
  phc_gem_spec.summary     = "Rails 5.2 App Engine"
  phc_gem_spec.description = "Ruby on Rails 5.2 Activemailer Contact Form Engine"
  phc_gem_spec.license     = "MIT"

  #Load Engine Files
  phc_gem_spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  phc_gem_spec.add_dependency 'rails', '~> 5.2', '>= 5.2.2'

  # Admin Panel Theme Dependencies
  phc_gem_spec.add_dependency 'phcadmin1', '~> 43.0'
  phc_gem_spec.add_dependency 'phcadmin2', '~> 43.0'
  phc_gem_spec.add_dependency 'phcadmin3', '~> 39.0'
  phc_gem_spec.add_dependency 'phcadmin4', '~> 19.0'
  phc_gem_spec.add_dependency 'phcadmin5', '~> 20.0'
  phc_gem_spec.add_dependency 'phcadmin6', '~> 7.0'

  # Website Theme Dependencies
  phc_gem_spec.add_dependency 'phctheme1', '~> 49.0'
  phc_gem_spec.add_dependency 'phctheme2', '~> 38.0'
  phc_gem_spec.add_dependency 'phctheme3', '~> 17.0'
  phc_gem_spec.add_dependency 'phctheme4', '~> 15.0'
  phc_gem_spec.add_dependency 'phctheme5', '~> 11.0'
  phc_gem_spec.add_dependency 'phctheme6', '~> 4.0'

  # PHC Helper Dependencies
  phc_gem_spec.add_dependency 'phcnotifi', '~> 40.0'
  phc_gem_spec.add_dependency 'phctitleseo', '~> 41.0'

  # UI & URL Frontend Dependencies
  phc_gem_spec.add_dependency 'country_select', '~> 4.0'
  phc_gem_spec.add_dependency 'friendly_id', '~> 5.2'
  phc_gem_spec.add_dependency 'gravtastic', '~> 3.2'

  # Images & Service Support Dependencies
  phc_gem_spec.add_dependency 'aws-sdk-s3', '~> 1.30'
  phc_gem_spec.add_dependency 'google-cloud-storage', '~> 1.17'
  phc_gem_spec.add_dependency 'mini_magick', '~> 4.9'

  # API Dependencies
  phc_gem_spec.add_dependency 'httparty', '~> 0.16.4'
  phc_gem_spec.add_dependency 'multi_json', '~> 1.13'
  phc_gem_spec.add_dependency 'oj', '~> 3.7'
  phc_gem_spec.add_dependency 'rabl', '~> 0.14.0'
  phc_gem_spec.add_dependency 'responders', '~> 2.4'

  # Database & Paper Trail Dependencies
  phc_gem_spec.add_dependency 'paper_trail', '~> 10.2'
  phc_gem_spec.add_dependency 'pg', '~> 1.1'

  # Security Dependencies
  phc_gem_spec.add_dependency 'phcaccounts', '~> 28.0'

  # Development Dependencies
  phc_gem_spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  phc_gem_spec.add_development_dependency 'byebug', '~> 10.0'
  phc_gem_spec.add_development_dependency 'capybara', '~> 3.13'
  phc_gem_spec.add_development_dependency 'minitest', '~> 5.11'
  phc_gem_spec.add_development_dependency 'rspec-rails', '~> 3.8'

  phc_gem_spec.add_development_dependency 'factory_bot_rails', '~> 5.0'
  phc_gem_spec.add_development_dependency 'faker', '~> 1.9'
  phc_gem_spec.add_development_dependency 'launchy', '~> 2.4'

  # Extra Development & Testing Dependencies
  phc_gem_spec.add_development_dependency 'letter_opener', '~> 1.7'
  phc_gem_spec.add_development_dependency 'shoulda-matchers', '~> 3.1'
  phc_gem_spec.add_development_dependency 'simplecov', '~> 0.16.1'

  phc_gem_spec.add_development_dependency 'nokogiri', '~> 1.10'
  phc_gem_spec.add_development_dependency 'database_cleaner', '~> 1.7'
  phc_gem_spec.add_development_dependency 'selenium-webdriver', '~> 3.141'

end
