### PHCContactor (Rails Contact Us Mailer Form) Documentation
PHCContactor Rails Engine contact form using ActionMailer.

* Customizable form using standard Bootstrap or HTML code.  
* Compatible with any mailer service using ActionMailer.  

#### Step 1 - Add PHCContactor to your gemfile and run install command  

	gem 'phccontactor'
	bundle install

#### Step 2 - Mount Engines (User Authentication Engine Included but not Nescessary)

	mount Phccontactor::Engine => "/contact_us"
	mount Phcaccounts::Engine => "/"


#### Step 4 - Configure ActionMailer

- Configure ActionMailer in your Production.rb with any service.  

#### Step 5 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.  

	rails assets:clobber
	rails assets:precompile

#### Step 6 - Generate Contact Form View (Customization)  
PHCContactor form and layout view can be overwritten by copy files to your application.  

	rails generate phccontactor:views

#### Step 7 - Setup ENV Variables  

	ENV["PHC_CONTACTOR_SENDER"]  

#### Additional Information
