Given("Authenticated user") do
  @browser.goto ENV["SYMBOLIC_URL"]
  @browser.text_field(id: 'user_email').set ENV["ACCOUNT_EMAIL"]
  @browser.button(id: 'mail_next_btn').click
  @browser.url == ENV["SYMBOLIC_URL"] + "sign_in"
  @browser.text_field(id: 'user_password').set ENV["ACCOUNT_PASSWORD"]
  @browser.button(value: 'masuk').click
  expect(@browser.url).to eq ENV["SYMBOLIC_URL"]
end
