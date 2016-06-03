ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address			=> 'smtp.sendgrid.net',
	:port				=> '587',
	:authentication		=> :plain,
	:user_name			=> 'app51646060@heroku.com',
	:password			=> '8d6xfre32315',
	:domain				=> 'heroku.com',
	:enable_starttls_auto => true
}
