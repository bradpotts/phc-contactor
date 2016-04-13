### PHCContactor (Contact Mailer Form) Documentation
PHCContactor is a customizable contact-us mailer form that uses rails actionmailer.
  
#### Step 1 - Add PHCContactor to your gemfile  
  
	gem 'phccontactor', '~> 0.8.5'
	bundle exec install
  
#### Step 2 - Recompile Assets  
PHCContactor UI requires bootstrap and fontawesome to operate.  
  
	rake assets:clobber
	rake assets:precompile
  