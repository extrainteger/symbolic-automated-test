module Helpers
  module Login
    def do_login
      text_field(id: 'user_email').set ENV["ACCOUNT_EMAIL"]
      button(id: 'mail_next_btn').click

      text_field(id: 'user_password').set ENV["ACCOUNT_PASSWORD"]
      button(value: 'masuk').click

      url
    end
  end
end