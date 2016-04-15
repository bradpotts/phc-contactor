class ApplicationMailer < ActionMailer::Base
  default from: ENV["PHC_CONTACTOR_FROM"]
  layout 'mailer'
end
