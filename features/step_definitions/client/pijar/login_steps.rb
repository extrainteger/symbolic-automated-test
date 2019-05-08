Given("User is in Pijar webpage") do
  @browser.goto ENV["PIJAR_URL"]
end

When("user click Symbolic button in Pijar") do
  @browser.a(data_target: "#signin").click
  @browser.a(class: "theme-btn-symbolic").wait_until(&:present?).click
end

Then("redirect to Pijar home page") do
  expect(@browser.url).to eq ENV["PIJAR_URL"] + "home"
end
