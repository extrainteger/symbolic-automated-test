require "spec_helper"

describe "Pijar login with Symbolic" do
  before { goto ENV["PIJAR_URL"] }

  it "successfully authenticated with Symbolic" do
    a(data_target: "#signin").click
    a(class: "theme-btn-symbolic").wait_until(&:present?).click

    symbolic_url = url

    result = do_login

    expect(symbolic_url).to eq ENV["SYMBOLIC_URL"] + "login"
    expect(url).to eq ENV["PIJAR_URL"] + "home"
  end

end