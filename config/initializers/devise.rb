Devise.setup do |config|
  config.mailer_sender = 'support @ Schoolion <no-reply@schoolion.com>'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '598316334523-ubn4slrtha366romc00eg7e89p4o6f5b.apps.googleusercontent.com', 'RAS7xhRbKL0cvS8KySCBd5J1', {access_type: "offline", approval_prompt: ""}

  require 'omniauth-facebook'
  config.omniauth :facebook, '733820026760459', '418896a99cdf79a7a680628dd3796a61'

end
