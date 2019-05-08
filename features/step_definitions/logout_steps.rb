Given("In home page") do
  @browser.goto ENV["SYMBOLIC_URL"] + "home"
end

When("user click logout") do
  @browser.span(class: "mdl-button__ripple-container").click
  @browser.a(href: "/logout").wait_until(&:present?).click
end

Then("successfully logged out") do
  result = @browser.p(class: "help-block-standalone")
  result.text == "Anda perlu untuk masuk atau daftar sebelum melanjutkan."

  expect(result).to be_present
  expect(result.text).to eq "Anda perlu untuk masuk atau daftar sebelum melanjutkan."
end