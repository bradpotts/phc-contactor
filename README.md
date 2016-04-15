### PHCContactor (Contact Mailer Form) Documentation
PHCContactor is a customizable contact-us mailer form that uses rails actionmailer.  
  
* Customizable form using standard Bootstrap forms.  
* Compatable with any mailer service using ActionMailer.  
  
#### Step 1 - Add PHCContactor to your gemfile  
  
	gem 'phccontactor', '~> 1.0', '>= 1.0.2'  
	bundle exec install
  
#### Step 2 - Configure ActionMailer 
  
* Configure ActionMailer in your Production.rb with any service.  
  
#### Step 3 - Generate Contact Form View   
  
	rails generate phccontactor:views
  
#### Step 3 - Recompile Assets  
  
	rake assets:clobber
	rake assets:precompile
  
#### Step 4 - Setup ENV Variables  
  
	ENV["PHC_CONTACTOR_SENDER"]  
  