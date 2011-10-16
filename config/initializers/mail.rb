if Rails.env.development?
  # Used for MockSMTPapp
  ActionMailer::Base.smtp_settings = {
    :address => "localhost",
    :port => 1025,
    :domain => "0.0.0.0:3000"
  }
else
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :domain         => 'heroku.com'
  }
end