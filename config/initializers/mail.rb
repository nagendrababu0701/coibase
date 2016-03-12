ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :domain => 'http://localhost:3000',
  :authentication => :plain,
  :user_name => "nagendrababu0701@gmail.com",
  :password => 'na@9491454718'
}

SendGrid.configure do |config|
  config.dummy_recipient = 'nagendrababu0701@gmail.com'
end