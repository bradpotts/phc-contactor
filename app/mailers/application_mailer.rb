class ApplicationMailer < ActionMailer::Base
  default from: ENV["PHC_MTDEVISE_FROM"]
  layout 'mailer'
end
