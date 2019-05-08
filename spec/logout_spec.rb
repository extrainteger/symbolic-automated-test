require "spec_helper"

describe "Sign out" do
  before do 
    goto ENV["SYMBOLIC_URL"]
    @result = do_login
  end

  it "successfully signed out" do
    span(class: "mdl-button__ripple-container").click
    a(href: "/logout").wait_until(&:present?).click
    result = p(class: "help-block-standalone")

    expect(url).to eq ENV["SYMBOLIC_URL"] + "login"
    expect(result).to be_present
    expect(result.text).to eq "Anda perlu untuk masuk atau daftar sebelum melanjutkan."
  end

end