Given("Go to Symbolic webpage") do
  @browser.goto ENV["SYMBOLIC_URL"]
end

When("user correctly enter email address") do
  @browser.text_field(id: 'user_email').set ENV["ACCOUNT_EMAIL"]
  @browser.button(id: 'mail_next_btn').click
end

Then("redirect to password page") do
  @browser.url == ENV["SYMBOLIC_URL"] + "sign_in"
end

When("user correctly enter password") do
  @browser.text_field(id: 'user_password').set ENV["ACCOUNT_PASSWORD"]
  @browser.button(value: 'masuk').click
end

When("successfully logged in") do
  expect(@browser.url).to eq ENV["SYMBOLIC_URL"]
end

Then("redirect to Symbolic webpage") do
  expect(@browser.url).to eq ENV["SYMBOLIC_URL"] + "login"
end
