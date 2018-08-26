[![security](https://hakiri.io/github/PHCNetworks/phc-contactor/master.svg)](https://hakiri.io/github/PHCNetworks/phc-contactor/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-contactor/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-contactor)
[![Gem Version](https://badge.fury.io/rb/phccontactor.svg)](https://badge.fury.io/rb/phccontactor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/PHCNetworks/phc-contactor/blob/master/MIT-LICENSE)  

### PHCContactor (Rails Contact Us Mailer Form) Documentation
PHCContactor Rails Engine contact form using ActionMailer.

* Customizable form using standard Bootstrap or HTML code.  
* Compatible with any mailer service using ActionMailer.  

#### Step 1 - Add PHCContactor to your gemfile and run install command  

	gem 'phccontactor', '~> 29.0'
	bundle install

#### Step 2 - Configure ActionMailer

- Configure ActionMailer in your Production.rb with any service.  

#### Step 3 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.  

	rails assets:clobber
	rails assets:precompile

#### Step 4 - Generate Contact Form View (Customization)  
PHCContactor form and layout view can be overwritten by copy files to your application.  

	rails generate phccontactor:views

#### Step 5 - Setup ENV Variables  

	ENV["PHC_CONTACTOR_SENDER"]  

#### Additional Information

- [Critical Security Updates](https://github.com/PHCNetworks/phc-contactor/wiki/Critical-Security-Updates)
